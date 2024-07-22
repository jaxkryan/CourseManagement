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
using Microsoft.AspNetCore.Authorization;

namespace CourseManagement.Areas.Teacher.Pages.Lessons
{
    [Authorize(Roles = "teacher")]
    public class IndexModel : PageModel
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<WebUser> _userManager;

        public IndexModel(ApplicationDbContext context, UserManager<WebUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        public PaginatedList<Lesson> PaginatedLessons { get; set; }

        // Pagination properties
        [BindProperty(SupportsGet = true)]
        public int PageIndex { get; set; } = 1;
        public int PageSize { get; set; } = 10; // Number of items per page

        public async Task OnGetAsync(int pageIndex = 1)
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
                        .Where(c => c.InstructorId == currentUser.Id) // Adjust based on your model
                        .ToListAsync();

                    // Get the course IDs
                    var courseIds = userCourses.Select(c => c.CourseId).ToList();

                    // Retrieve the lessons related to these courses
                    var lessonsQuery = _context.Lessons
                        .Where(l => courseIds.Contains(l.CourseId)) // Adjust the property name if needed
                        .Include(l => l.Course); // Include related course if needed

                    // Create a paginated list of lessons
                    PaginatedLessons = await PaginatedList<Lesson>.CreateAsync(lessonsQuery, pageIndex, PageSize);
                }
                else
                {
                    PaginatedLessons = new PaginatedList<Lesson>(new List<Lesson>(), 1, 0, 0);
                }
            }
            else
            {
                PaginatedLessons = new PaginatedList<Lesson>(new List<Lesson>(), 1, 0, 0);
            }
        }
    }
}
