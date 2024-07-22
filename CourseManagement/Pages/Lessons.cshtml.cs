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
        public int CID { get; set; }

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
            var course = await _context.Courses.FindAsync(courseid);
            if (course == null)
            {
                return NotFound();
            }
            ViewData["Cname"] = course.CourseName;
            await LoadLessonsAsync();
            var currentUser = await _userManager.GetUserAsync(User);
            Enrollment enrollment = new Enrollment
            {
                CourseId = courseid,
                UserId = currentUser.Id,
                EnrolledAt = DateTime.Now,
            };
            _context.Enrollments.Add(enrollment);
            _context.SaveChanges();
            return Page();
        }

        private async Task LoadLessonsAsync()
        {
            listLessons = await _context.Lessons
                .Where(l => l.CourseId == CID)
                .OrderBy(l => l.LessonId)  // Ensure lessons are in order
                .ToListAsync();

            listAssignments = await _context.Assignments
                .Where(a => a.CourseId == CID)
                .OrderBy(a => a.AssignmentId)  // Ensure assignments are in order
                .ToListAsync();

            ShowNoLessonsFound = !listLessons.Any();
        }
    }
}
