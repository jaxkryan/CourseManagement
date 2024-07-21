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
    public class LessonsModel : PageModel
    {
        private readonly UserManager<WebUser> _userManager;
        private readonly ApplicationDbContext _context;
        public List<Lesson> listLessons { get; private set; }
       //public int CurrentPage { get; set; }
        //public int TotalPages { get; private set; }
        public bool ShowNoLessonsFound { get; private set; }

        public WebUser CurrentUser { get; private set; }
        public int CID { get; set; } // Added property to receive courseid

        [BindProperty(SupportsGet = true)]
        public string SearchText { get; set; }

        public LessonsModel(UserManager<WebUser> userManager, ApplicationDbContext context)
        {
            _userManager = userManager;
            _context = context;
            SearchText = "";
        }

        public async Task<IActionResult> OnGetAsync(int courseid/*, int? page*/)
        {
            CID = courseid;
            ViewData["Cname"] = _context.Courses.Where(c => c.CourseId == courseid).Select(c => c.CourseName).FirstOrDefault();
            //CurrentPage = page ?? 1;
            await LoadLessonsAsync();
            return Page();
        }

        public async Task<IActionResult> OnPostSearchAsync()
        {
            //CurrentPage = 1; // Reset to first page when searching
            await LoadLessonsAsync();
            return Page();
        }

        private async Task LoadLessonsAsync()
        {
            IQueryable<Lesson> lessonsQuery = _context.Lessons
                .Where(l => l.CourseId == CID);

            if (!string.IsNullOrEmpty(SearchText))
            {
                lessonsQuery = lessonsQuery.Where(l => l.LessonTitle.Contains(SearchText));
            }

            //int pageSize = 6; // Set your desired page size

            //TotalPages = (int)System.Math.Ceiling((double)await lessonsQuery.CountAsync() / pageSize);

            //if (CurrentPage < 1)
            //{
            //    CurrentPage = 1;
            //}
            //else if (CurrentPage > TotalPages)
            //{
            //    CurrentPage = TotalPages;
            //}

            //listLessons = await lessonsQuery.Skip((CurrentPage - 1) * pageSize)
            //                               .Take(pageSize)
            //                               .ToListAsync();
            listLessons = await lessonsQuery.ToListAsync();

            ShowNoLessonsFound = listLessons.Count == 0;
        }
    }
}