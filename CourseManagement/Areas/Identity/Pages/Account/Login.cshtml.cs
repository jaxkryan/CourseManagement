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

        public IList<AuthenticationScheme> ExternalLogins { get; set; }

        public string ReturnUrl { get; set; }

        [TempData]
        public string ErrorMessage { get; set; }

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

        //    public async Task<IActionResult> OnPostAsync(string returnUrl = "~/")
        //    {
        //        returnUrl ??= Url.Content("~/");
        //        ExternalLogins = (await _signInManager.GetExternalAuthenticationSchemesAsync()).ToList();

        //        //This is not good..........
        //        foreach (var e in ModelState)
        //        {
        //            if (ModelState[e.Key].ValidationState == Microsoft.AspNetCore.Mvc.ModelBinding.ModelValidationState.Invalid)
        //            {
        //                ModelState[e.Key].ValidationState = Microsoft.AspNetCore.Mvc.ModelBinding.ModelValidationState.Valid;
        //            }
        //        }
        //        if (ModelState.IsValid)
        //        {
        //            // This doesn't count login failures towards account lockout
        //            // To enable password failures to trigger account lockout, set lockoutOnFailure: true
        //            var result = await _signInManager.PasswordSignInAsync(Input.Email, Input.Password, Input.RememberMe, lockoutOnFailure: false);
        //            if (result.Succeeded)
        //            {
        //                _logger.LogInformation("User logged in.");
        //                var user = await _userManager.FindByEmailAsync(Input.Email);
        //                var roles = await _userManager.GetRolesAsync(user);

        //                if (roles.Contains("student"))
        //                {
        //                    returnUrl = "/Student/Index";
        //                }
        //                else if (roles.Contains("admin"))
        //                {
        //                    returnUrl = "/Admin/Index";
        //                }
        //                else if (roles.Contains("teacher"))
        //                {
        //                    returnUrl = "/Teacher/Index";
        //                }
        //                else if (roles.Contains("parent"))
        //                {
        //                    returnUrl = "/Parent/Index";
        //                }
        //                return LocalRedirect(returnUrl);
        //            }
        //            if (result.RequiresTwoFactor)
        //            {
        //                return RedirectToPage("./LoginWith2fa", new { ReturnUrl = returnUrl, RememberMe = Input.RememberMe });
        //            }
        //            if (result.IsLockedOut)
        //            {
        //                _logger.LogWarning("User account locked out.");
        //                return RedirectToPage("./Lockout");
        //            }
        //            else
        //            {
        //                ModelState.AddModelError(string.Empty, "Invalid login attempt.");
        //                return Page();
        //            }
        //        }
        //        return Page();
        //    }
        public async Task<IActionResult> OnPostAsync(string returnUrl = "~/")
        {
            returnUrl = returnUrl ?? Url.Content("~/");
            // Đã đăng nhập nên chuyển hướng về Index
            if (_signInManager.IsSignedIn(User)) return Redirect("~/");
            //d hieu sao bo cai nay di thi sai?
            foreach (var e in ModelState)
            {
                if (ModelState[e.Key].ValidationState == Microsoft.AspNetCore.Mvc.ModelBinding.ModelValidationState.Invalid)
                {
                    ModelState[e.Key].ValidationState = Microsoft.AspNetCore.Mvc.ModelBinding.ModelValidationState.Valid;
                }
            }
            if (ModelState.IsValid)
            {
                // Thử login bằng username/password
                var result = await _signInManager.PasswordSignInAsync(
                    Input.UserNameOrEmail,
                    Input.Password,
                    Input.RememberMe,
                    true
                );

                if (!result.Succeeded)
                {
                    // Thất bại username/password -> tìm user theo email, nếu thấy thì thử đăng nhập
                    // bằng user tìm được
                    var user = await _userManager.FindByEmailAsync(Input.UserNameOrEmail);
                    if (user != null)
                    {
                        result = await _signInManager.PasswordSignInAsync(
                            user,
                            Input.Password,
                            Input.RememberMe,
                            true
                        );
                    }
                }

                if (result.Succeeded)
                {
                    _logger.LogInformation("User logged in.");
                    var user = await _userManager.FindByNameAsync(Input.UserNameOrEmail);
                    if (user == null)
                    {
                        user = await _userManager.FindByEmailAsync(Input.UserNameOrEmail);
                    }
                    var roles = await _userManager.GetRolesAsync(user);
                    if (roles.Contains("student"))
                    {
                        returnUrl = "/StudentCourses";
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
                    // Nếu cấu hình đăng nhập hai yếu tố thì chuyển hướng đến LoginWith2fa
                    return RedirectToPage("./LoginWith2fa", new { ReturnUrl = returnUrl, RememberMe = Input.RememberMe });
                }
                if (result.IsLockedOut)
                {
                    _logger.LogWarning("Tài khoản bí tạm khóa.");
                    // Chuyển hướng đến trang Lockout - hiện thị thông báo
                    return RedirectToPage("./Lockout");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, "Không đăng nhập được.");
                    return Page();
                }
            }

            // If we got this far, something failed, redisplay form
            return Page();
        }
    }
}
