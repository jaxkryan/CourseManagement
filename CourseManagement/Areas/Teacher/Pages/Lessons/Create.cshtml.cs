using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using CourseManagement.Models;
using CourseManagement.Pages.Service;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

namespace CourseManagement.Areas.Teacher.Pages.Lessons
{
    [Authorize(Roles = "teacher")]
    public class CreateModel : PageModel
    {
        private readonly CourseManagement.Pages.Service.ApplicationDbContext _context;
        private readonly UserManager<WebUser> _userManager;

        public CreateModel(CourseManagement.Pages.Service.ApplicationDbContext context, UserManager<WebUser> userManager)
        {
            _context = context;
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
                    // Get courses created by the current user
                    var userCourses = await _context.Courses
                        .Where(c => c.InstructorId == currentUser.Id)
                        .Select(c => new SelectListItem
                        {
                            Value = c.CourseId.ToString(),
                            Text = c.CourseName
                        })
                        .ToListAsync();

                    // Set the courses in ViewData
                    ViewData["CourseId"] = new SelectList(userCourses, "Value", "Text");
                    return Page();
                }
            }

            // Handle the case where the current user is not found or email is null
            ViewData["CourseId"] = new SelectList(Enumerable.Empty<SelectListItem>());
            return Page();
        }

        [BindProperty]
        public Lesson Lesson { get; set; }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            Lesson.CreatedAt = DateTime.UtcNow; // Set CreatedAt to the current UTC time
            _context.Lessons.Add(Lesson);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
