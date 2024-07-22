using CourseManagement.Models;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using MimeKit;
using System.ComponentModel.DataAnnotations;

namespace CourseManagement.Areas.Identity.Pages.Account
{
    [AllowAnonymous]
    public class LoginModel : PageModel
    {
        private readonly UserManager<WebUser> _userManager;
        private readonly SignInManager<WebUser> _signInManager;
        private readonly ILogger<LoginModel> _logger;

        public LoginModel(SignInManager<WebUser> signInManager,
            ILogger<LoginModel> logger,
            UserManager<WebUser> userManager)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _logger = logger;
        }

        [BindProperty]
        public InputModel Input { get; set; }
        [TempData]
        public string ErrorMessage { get; set; }
        public IList<AuthenticationScheme> ExternalLogins { get; set; }

        public string ReturnUrl { get; set; }

        public class InputModel
        {
            [Required(ErrorMessage = "Không để trống")]
            [Display(Name = "Nhập username hoặc email của bạn")]
            [StringLength(100, MinimumLength = 1, ErrorMessage = "Nhập đúng thông tin")]
            public string UserNameOrEmail { set; get; }

            [Required]
            [DataType(DataType.Password)]
            [Display(Name = "Mật khẩu")]
            public string Password { get; set; }

            [Display(Name = "Nhớ thông tin đăng nhập?")]
            public bool RememberMe { get; set; }
        }

        public async Task OnGetAsync(string returnUrl = "~/")
        {
            if (!string.IsNullOrEmpty(ErrorMessage))
            {
                ModelState.AddModelError(string.Empty, ErrorMessage);
            }

            returnUrl ??= Url.Content("~/");

            // Clear the existing external cookie to ensure a clean login process
            await HttpContext.SignOutAsync(IdentityConstants.ExternalScheme);

            ExternalLogins = (await _signInManager.GetExternalAuthenticationSchemesAsync()).ToList();

            ReturnUrl = returnUrl;
        }

        public async Task<IActionResult> OnPostAsync(string returnUrl = "~/")
        {
            returnUrl ??= Url.Content("~/");

            if (_signInManager.IsSignedIn(User))
                return Redirect("~/");

            if (ModelState.IsValid)
            {
                var user = await _userManager.FindByNameAsync(Input.UserNameOrEmail);
                if (user == null)
                {
                    user = await _userManager.FindByEmailAsync(Input.UserNameOrEmail);
                }

                if (user != null)
                {
                    if (!user.EmailConfirmed)
                    {
                        ModelState.AddModelError(string.Empty, "Please check your email for confirmation to log in.");
                        return Page();
                    }
                    if (user.IsActive == false) {
                        return RedirectToPage("./Lockout");
                    }
                    var result = await _signInManager.PasswordSignInAsync(
                        user.UserName, // Use the UserName property of the user object
                        Input.Password,
                        Input.RememberMe,
                        lockoutOnFailure: true
                    );
                    if (result.Succeeded)
                    {
                        _logger.LogInformation("User logged in.");
                        var roles = await _userManager.GetRolesAsync(user);
                        if (roles.Contains("student"))
                        {
                            returnUrl = "/Index";
                        }
                        else if (roles.Contains("admin"))
                        {
                            returnUrl = "/Admin/Index";
                        }
                        else if (roles.Contains("teacher"))
                        {
                            returnUrl = "/Teacher/Index";
                        }
                        else if (roles.Contains("parent"))
                        {
                            returnUrl = "/Parent/Index";
                        }
                        return LocalRedirect(returnUrl);
                    }

                    if (result.RequiresTwoFactor)
                    {
                        return RedirectToPage("./LoginWith2fa", new { ReturnUrl = returnUrl, RememberMe = Input.RememberMe });
                    }
                    if (result.IsLockedOut)
                    {
                        _logger.LogWarning("Tài khoản bí tạm khóa.");
                        return RedirectToPage("./Lockout");
                    }
                }

                ModelState.AddModelError(string.Empty, "Email/Username or Password error!");
            }
            ExternalLogins = (await _signInManager.GetExternalAuthenticationSchemesAsync()).ToList();

            return Page();
        }
        public IActionResult OnPostGoBack()
        {
            string returnUrl = "/Index"; 
            return LocalRedirect(returnUrl);
        }
    }
    }
