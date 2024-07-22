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
    [Authorize(Roles = "student")]
    public class StudentCoursesModel : PageModel
    {
        private readonly UserManager<WebUser> _userManager;
        private readonly ApplicationDbContext _context;
        public List<Course> listCourses { get; private set; }
        [BindProperty(SupportsGet = true)]
        public string EnrollmentFilter { get; set; }
        [BindProperty(SupportsGet = true)]
        public int CurrentPage { get; set; } = 1;   
        public int TotalPages { get; private set; }
        public bool ShowNoCoursesFound { get; private set; }
        public int UserId {  get; private set; }

        public WebUser CurrentUser { get; private set; }
        [BindProperty(SupportsGet = true)]
        public string SearchText { get; set; }

        public StudentCoursesModel(UserManager<WebUser> userManager, ApplicationDbContext context)
        {
            _userManager = userManager;
            _context = context;
            SearchText = "";
        }

        public async Task<IActionResult> OnGetAsync(int? page, string searchText, string enrollmentFilter)
        {
            CurrentPage = page ?? 1;
            SearchText = searchText ?? "";
            EnrollmentFilter = enrollmentFilter ?? "";

            await LoadCoursesAsync();
            return Page();
        }

        public async Task<IActionResult> OnPostSearchAsync()
        {
            CurrentPage = 1; // Reset to first page when searching
            await LoadCoursesAsync();
            ViewData["listCourses"] = listCourses;
            return Page();
        }

        private async Task LoadCoursesAsync()
        {
            var currentUser = await _userManager.GetUserAsync(User);
            IQueryable<Course> coursesQuery = _context.Courses.Include(c => c.Lessons)
                                                              .Include(c => c.Enrollments)
                                                              .Include(c => c.Assignments);

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

            int pageSize = 6;
            int totalCount = await coursesQuery.CountAsync();
            TotalPages = (int)Math.Ceiling((double)totalCount / pageSize);

            // Ensure CurrentPage is within valid range
            CurrentPage = Math.Max(1, Math.Min(CurrentPage, Math.Max(1, TotalPages)));

            if (totalCount == 0)
            {
                listCourses = new List<Course>();
            }
            else
            {
                listCourses = await coursesQuery.Skip((CurrentPage - 1) * pageSize)
                                                .Take(pageSize)
                                                .ToListAsync();
            }

            ShowNoCoursesFound = listCourses.Count == 0;
        }
    }
}