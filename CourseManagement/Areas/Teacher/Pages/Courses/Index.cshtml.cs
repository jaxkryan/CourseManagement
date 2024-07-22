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

namespace CourseManagement.Areas.Teacher.Pages.Courses
{
    [Authorize(Roles = "teacher")]
    public class IndexModel : PageModel
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<WebUser> _userManager;

        public IndexModel(ApplicationDbContext context, UserManager<WebUser> userManager)
        {
            _userManager = userManager;
            _context = context;
        }

        public PaginatedList<Course> PaginatedCourses { get; set; }

        // Pagination properties
        [BindProperty(SupportsGet = true)]
        public int PageIndex { get; set; } = 1;
        public int PageSize { get; set; } = 10; // Number of items per page

        // Search properties
        [BindProperty(SupportsGet = true)]
        public string SearchString { get; set; }
        [BindProperty(SupportsGet = true)]
        public DateTime? StartDate { get; set; }
        [BindProperty(SupportsGet = true)]
        public DateTime? EndDate { get; set; }

        public async Task OnGetAsync(int pageIndex = 1, string searchString = null, DateTime? startDate = null, DateTime? endDate = null)
        {
            // Get the current user's email
            var email = User.Identity.Name;

            if (email != null)
            {
                // Retrieve the current user
                var currentUser = await _userManager.FindByEmailAsync(email);

                if (currentUser != null)
                {
                    // Filter courses by the current user's ID
                    var coursesQuery = _context.Courses
                        .Where(c => c.InstructorId == currentUser.Id);

                    // Apply search filter
                    if (!string.IsNullOrEmpty(searchString))
                    {
                        coursesQuery = coursesQuery.Where(c => c.CourseName.Contains(searchString)
                                                            || c.Description.Contains(searchString));
                    }

                    // Apply date filter
                    if (startDate.HasValue)
                    {
                        coursesQuery = coursesQuery.Where(c => c.CreatedAt >= startDate.Value);
                    }
                    if (endDate.HasValue)
                    {
                        coursesQuery = coursesQuery.Where(c => c.CreatedAt <= endDate.Value);
                    }

                    // Include instructor information
                    coursesQuery = coursesQuery.Include(c => c.Instructor);

                    // Create a paginated list of courses
                    PaginatedCourses = await PaginatedList<Course>.CreateAsync(coursesQuery, pageIndex, PageSize);
                }
                else
                {
                    PaginatedCourses = new PaginatedList<Course>(new List<Course>(), 1, 0, 0);
                }
            }
            else
            {
                PaginatedCourses = new PaginatedList<Course>(new List<Course>(), 1, 0, 0);
            }
        }

        public async Task<IActionResult> OnPostDeleteAsync(int id)
        {
            var course = await _context.Courses.FindAsync(id);
            if (course == null)
            {
                return NotFound();
            }

            _context.Courses.Remove(course);
            await _context.SaveChangesAsync();

            return RedirectToPage();
        }
    }
}