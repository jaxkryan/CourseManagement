using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CourseManagement.Models;
using CourseManagement.Pages.Service;

namespace CourseManagement.Pages
{
    //[Authorize(Roles = "student")]
    public class StudentCoursesModel : PageModel
    {
        private readonly UserManager<WebUser> _userManager;
        private readonly ApplicationDbContext _context;
        public PaginatedList<Course> PaginatedCourses { get; set; }

        [BindProperty(SupportsGet = true)]
        public string EnrollmentFilter { get; set; }

        [BindProperty(SupportsGet = true)]
        public int PageIndex { get; set; } = 1;

        public int PageSize { get; set; } = 6; // Number of items per page

        [BindProperty(SupportsGet = true)]
        public string SearchText { get; set; }
        public HashSet<int> EnrolledCourseIds { get; set; }

        public StudentCoursesModel(UserManager<WebUser> userManager, ApplicationDbContext context)
        {
            _userManager = userManager;
            _context = context;
        }

        public async Task<IActionResult> OnGetAsync(int? pageIndex, string searchText, string enrollmentFilter)
        {
            PageIndex = pageIndex ?? 1;
            SearchText = searchText ?? "";
            EnrollmentFilter = enrollmentFilter ?? "";

            await LoadCoursesAsync();
            return Page();
        }

        private async Task LoadCoursesAsync()
        {
            var currentUser = await _userManager.GetUserAsync(User);
            EnrolledCourseIds = _context.Enrollments
            .Where(e => e.UserId == currentUser.Id)
            .Select(e => e.CourseId)
            .ToHashSet();
            IQueryable<Course> coursesQuery = _context.Courses.Include(c => c.Lessons)
                                                              .Include(c => c.Enrollments)
                                                              .Include(c => c.Assignments)
                                                              .Include(c => c.Instructor);
            if (!string.IsNullOrEmpty(SearchText))
            {
                coursesQuery = coursesQuery.Where(c => c.CourseName.Contains(SearchText));
            }

            switch (EnrollmentFilter)
            {
                case "enrolled":
                    coursesQuery = coursesQuery.Where(c => c.Enrollments.Any(e => e.UserId == currentUser.Id));
                    break;
                case "not_enrolled":
                    coursesQuery = coursesQuery.Where(c => !c.Enrollments.Any(e => e.UserId == currentUser.Id));
                    break;
            }

            PaginatedCourses = await PaginatedList<Course>.CreateAsync(coursesQuery, PageIndex, PageSize);
        }
    }
}