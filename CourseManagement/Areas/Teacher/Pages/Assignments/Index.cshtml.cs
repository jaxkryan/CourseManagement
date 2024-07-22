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

namespace CourseManagement.Areas.Teacher.Pages.Assignments
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

        public IList<Assignment> Assignments { get; set; }
        public PaginatedList<Assignment> PaginatedAssignments { get; set; }

        // Pagination properties
        public int PageIndex { get; set; }
        public int PageSize { get; set; } = 5; // Number of items per page

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
                        .Where(c => c.InstructorId == currentUser.Id) // Adjust this based on your model
                        .ToListAsync();

                    // Get the course IDs
                    var courseIds = userCourses.Select(c => c.CourseId).ToList();

                    // Retrieve the assignments related to these courses
                    var assignments = await _context.Assignments
                        .Where(a => courseIds.Contains(a.CourseId))
                        .Include(a => a.Course)
                        .ToListAsync();

                    // Create a paginated list of assignments
                    PaginatedAssignments = PaginatedList<Assignment>.Create(assignments, pageIndex, PageSize);
                }
                else
                {
                    PaginatedAssignments = new PaginatedList<Assignment>(new List<Assignment>(), 1, 0, 0);
                }
            }
            else
            {
                PaginatedAssignments = new PaginatedList<Assignment>(new List<Assignment>(), 1, 0, 0);
            }
        }
    }

}

