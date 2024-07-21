using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Identity;
using CourseManagement.Models;
using System.IO;
using System.Threading.Tasks;

namespace CourseManagement.Areas.Identity.Pages.Account.Manage
{
    public class IndexModel : PageModel
    {
        private readonly UserManager<WebUser> _userManager;
        private readonly SignInManager<WebUser> _signInManager;

        public IndexModel(
                UserManager<WebUser> userManager,
                SignInManager<WebUser> signInManager)
        {
            _userManager = userManager;
            _signInManager = signInManager;
        }

        public string Username { get; set; }

        [BindProperty]
        public InputModel Input { get; set; }

        public class InputModel
        {
            public string Address { get; set; }
            public DateTime Birthday { get; set; }

            // New properties
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public DateTime Dob { get; set; }
            public string? Image { get; set; }

            // Property for image upload
            [Display(Name = "Profile Picture")]
            public IFormFile? ImageFile { get; set; }
        }

        private async Task LoadAsync(WebUser user)
        {
            var userName = await _userManager.GetUserNameAsync(user);
            var phoneNumber = await _userManager.GetPhoneNumberAsync(user);
            Username = userName;

            Input = new InputModel
            {
                Birthday = user.Dob,
                Address = user.Address,
                FirstName = user.FirstName,
                LastName = user.LastName,
                Image = user.Image,
            };
        }

        public async Task<IActionResult> OnGetAsync()
        {
            var user = await _userManager.GetUserAsync(User);

            if (user == null)
            {
                return NotFound($"Không tải được tài khoản ID = '{_userManager.GetUserId(User)}'.");
            }

            await LoadAsync(user);
            return Page();
        }

        public async Task<IActionResult> OnPostAsync()
        {
            var user = await _userManager.GetUserAsync(User);

            if (user == null)
            {
                return NotFound($"Không có tài khoản ID: '{_userManager.GetUserId(User)}'.");
            }

            if (!ModelState.IsValid)
            {
                await LoadAsync(user);
                return Page();
            }

            //Process the uploaded image file
            if (Input.ImageFile != null)
            {
                var uploads = Path.Combine("wwwroot/img/profile");
                if (!Directory.Exists(uploads))
                {
                    Directory.CreateDirectory(uploads);
                }

                var filePath = Path.Combine(uploads, Input.ImageFile.FileName);
                using (var stream = new FileStream(filePath, FileMode.Create))
                {
                    await Input.ImageFile.CopyToAsync(stream);
                }
                Input.Image = $"/img/profile/{Input.ImageFile.FileName}";
            }

            user.Address = Input.Address;
            user.Dob = Input.Birthday;
            user.FirstName = Input.FirstName;
            user.LastName = Input.LastName;
            Console.WriteLine("-------------------------------------" + Input.Birthday);
            if (Input.Image != null)
            {
                user.Image = Input.Image;
            }

            await _userManager.UpdateAsync(user);

            return RedirectToPage();
        }
    }
}
