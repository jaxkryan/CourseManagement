using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using CourseManagement.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Authorization;

namespace CourseManagement.Areas.Teacher.Pages.Courses
{
    [Authorize(Roles = "teacher")]
    public class CreateModel : PageModel
    {
        private readonly CourseManagement.Pages.Service.ApplicationDbContext _context;
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly UserManager<WebUser> _userManager;

        public CreateModel(CourseManagement.Pages.Service.ApplicationDbContext context, UserManager<WebUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            _context = context;
            _roleManager = roleManager;
            _userManager = userManager;
        }

        public async Task<IActionResult> OnGetAsync()
        {
            // Get the current user's email
            var email = User.Identity.Name;

            if (email != null)
            {
                // Retrieve the current user
                var currentUser = await _userManager.FindByEmailAsync(email);

                if (currentUser != null)
                {
                    // Create a SelectListItem for the current user
                    var instructor = new SelectListItem
                    {
                        Value = currentUser.Id,
                        Text = $"{currentUser.FirstName} {currentUser.LastName}"
                    };

                    // Set the instructor in ViewData
                    ViewData["InstructorId"] = new SelectList(new List<SelectListItem> { instructor }, "Value", "Text");

                    return Page();
                }
            }

            // Handle the case where the current user is not found or email is null
            ViewData["InstructorId"] = new SelectList(new List<SelectListItem>(), "Value", "Text");
            return Page();
        }


        [BindProperty]
        public Course Course { get; set; }

        public class UserWithRoles
        {
            public string Id { get; set; }
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public string Email { get; set; }
            public DateTime Dob { get; set; }
            public string Address { get; set; }
            public bool IsActive { get; set; }
            public List<string> Roles { get; set; }
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                var errors = ModelState
                    .Where(x => x.Value.Errors.Count > 0)
                    .Select(x => new { x.Key, x.Value.Errors })
                    .ToArray();
                Console.WriteLine(errors);

                return Page();
            }

            // Set the CreatedAt field to the current time
            Course.CreatedAt = DateTime.UtcNow;

            _context.Courses.Add(Course);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }

        private async Task<List<SelectListItem>> GetTeachersAsync()
        {

            // Fetch all users
            var Teachers = new List<WebUser>();

            // Ensure the "teacher" role exists
            var teacherRole = await _roleManager.FindByNameAsync("teacher");
            if (teacherRole == null)
            {
                // Handle the case where the "teacher" role does not exist
                Teachers = new List<WebUser>();
            }

            // Get users with the "teacher" role
            var usersInRole = await _userManager.GetUsersInRoleAsync("teacher");
            Teachers = usersInRole.Where(u => u.IsActive).ToList();
            return Teachers.Select(u => new SelectListItem
            {
                Value = u.Id,
                Text = $"{u.FirstName} {u.LastName}"
            }).ToList();
        }
    }
}
