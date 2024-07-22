using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Identity;
using CourseManagement.Models;
using System.ComponentModel.DataAnnotations;
using CourseManagement.Pages.Service;

namespace CourseManagement.Areas.Admin.Pages
{
    public class CreateModel : PageModel
    {
        private readonly UserManager<WebUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly ApplicationDbContext _context;

        public CreateModel(UserManager<WebUser> userManager, RoleManager<IdentityRole> roleManager,ApplicationDbContext context)
        {
            _userManager = userManager;
            _roleManager = roleManager;
            _context = context;
        }

        [BindProperty]
        public InputModel Input { get; set; }

        public class InputModel
        {
            [Required]
            [Display(Name = "First Name")]
            public string FirstName { get; set; }

            [Required]
            [Display(Name = "Last Name")]
            public string LastName { get; set; }

            [Required]
            [EmailAddress]
            [Display(Name = "Email")]
            public string Email { get; set; }

            [Required]
            [StringLength(100, ErrorMessage = "The {0} must be at least {2} and at max {1} characters long.", MinimumLength = 6)]
            [DataType(DataType.Password)]
            [Display(Name = "Password")]
            public string Password { get; set; }

            [DataType(DataType.Password)]
            [Display(Name = "Confirm password")]
            [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
            public string ConfirmPassword { get; set; }

            [Required]
            [DataType(DataType.Date)]
            [Display(Name = "Date of Birth")]
            public DateTime Dob { get; set; }

            [Required]
            public string Address { get; set; }

            [Required]
            public string Qualification { get; set; }

            [Required]
            public string Biography { get; set; }
        }

        public void OnGet()
        {
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (ModelState.IsValid)
            {
                var user = new WebUser
                {
                    UserName = Input.Email,
                    Email = Input.Email,
                    FirstName = Input.FirstName,
                    LastName = Input.LastName,
                    Dob = Input.Dob,
                    Address = Input.Address,
                    CreatedAt = DateTime.UtcNow
                };
                var result = await _userManager.CreateAsync(user, Input.Password);
                if (result.Succeeded)
                {
                    // Ensure the "teacher" role exists
                    if (!await _roleManager.RoleExistsAsync("teacher"))
                    {
                        await _roleManager.CreateAsync(new IdentityRole("teacher"));
                    }

                    // Add the user to the "teacher" role
                    await _userManager.AddToRoleAsync(user, "teacher");

                    // Create and associate Teacher entity
                    var teacher = new Models.Teacher
                    {
                        TeacherId = user.Id,
                        Qualification = Input.Qualification,
                        Biography = Input.Biography
                    };

                    // Here you would typically save the teacher entity to your database
                    _context.Teachers.Add(teacher);
                    _context.SaveChanges();

                    return RedirectToPage("./Index");
                }
                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError(string.Empty, error.Description);
                }
            }

            // If we got this far, something failed, redisplay form
            return Page();
        }
    }
}