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
        public int CurrentPage { get; set; }
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

        public async Task<IActionResult> OnGetAsync(int? page)
        {
            CurrentPage = page ?? 1;
            await LoadCoursesAsync();
            ViewData["listCourses"] = listCourses;
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
            IQueryable<Course> coursesQuery = _context.Courses.Include(c => c.Lessons)
                                                              .Include(c => c.Enrollments)
                                                              .Include(c => c.Assignments);

            if (!string.IsNullOrEmpty(SearchText))
            {
                coursesQuery = coursesQuery.Where(c => c.CourseName.Contains(SearchText));
            }

            int pageSize = 6; // Set your desired page size

            TotalPages = (int)System.Math.Ceiling((double)await coursesQuery.CountAsync() / pageSize);

            if (CurrentPage < 1)
            {
                CurrentPage = 1;
            }
            else if (CurrentPage > TotalPages)
            {
                CurrentPage = TotalPages;
            }

            listCourses = await coursesQuery.Skip((CurrentPage - 1) * pageSize)
                                            .Take(pageSize)
                                            .ToListAsync();

            ShowNoCoursesFound = listCourses.Count == 0;
        }
    }
}