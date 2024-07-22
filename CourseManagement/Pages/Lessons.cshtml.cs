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
        public List<Assignment> listAssignments { get; private set; }
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

        public async Task<IActionResult> OnGetAsync(int courseid)
        {
            CID = courseid;
            ViewData["Cname"] = _context.Courses.Where(c => c.CourseId == courseid).Select(c => c.CourseName).FirstOrDefault();
            await LoadLessonsAsync();
            var currentUser = await _userManager.GetUserAsync(User);
            Enrollment enrollment = new Enrollment
            {
                CourseId = courseid,
                UserId  = currentUser.Id,
                EnrolledAt = DateTime.Now,
            };
            _context.Enrollments.Add(enrollment);
            _context.SaveChanges();
            return Page();
        }

        private async Task LoadLessonsAsync()
        {
            IQueryable<Lesson> lessonsQuery = _context.Lessons
                .Where(l => l.CourseId == CID);
            IQueryable<Assignment> assignmentsQuery = _context.Assignments
                .Where(a => a.CourseId == CID);

            listLessons = await lessonsQuery.ToListAsync();
            listAssignments = await assignmentsQuery.ToListAsync();

            ShowNoLessonsFound = listLessons.Count == 0;
        }
    }
}