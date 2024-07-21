using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using CourseManagement.Models;
using CourseManagement.Pages.Service;
using Microsoft.AspNetCore.Identity;

namespace CourseManagement.Areas.Teacher.Pages.Assignments
{
    public class IndexModel : PageModel
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<WebUser> _userManager;

        public IndexModel(ApplicationDbContext context, UserManager<WebUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        public IList<Assignment> Assignment { get; set; }

        public async Task OnGetAsync()
        {
            // Get the current user's email
            var email = User.Identity.Name;

            if (email != null)
            {
                // Retrieve the current user
                var currentUser = await _userManager.FindByEmailAsync(email);

                if (currentUser != null)
                {
                    // Get the user's courses
                    var userCourses = await _context.Courses
                        .Where(c => c.InstructorId == currentUser.Id) // Adjust this based on your model
                        .ToListAsync();

                    // Get the course IDs
                    var courseIds = userCourses.Select(c => c.CourseId).ToList();

                    // Retrieve the assignments related to these courses
                    Assignment = await _context.Assignments
                        .Where(a => courseIds.Contains(a.CourseId))
                        .Include(a => a.Course)
                        .ToListAsync();
                }
                else
                {
                    Assignment = new List<Assignment>();
                }
            }
            else
            {
                Assignment = new List<Assignment>();
            }
        }
    }
}
