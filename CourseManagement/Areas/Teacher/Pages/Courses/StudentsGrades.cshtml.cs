using CourseManagement.Models;
using CourseManagement.Pages.Service;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;

namespace CourseManagement.Areas.Teacher.Pages.Courses
{
    public class StudentsGradesModel : PageModel
    {
        private readonly ApplicationDbContext _context;

        public StudentsGradesModel(ApplicationDbContext context)
        {
            _context = context;
        }

        [BindProperty(SupportsGet = true)]
        public int CourseId { get; set; }

        public List<Course> Courses { get; set; }
        public Dictionary<string, List<(string AssignmentTitle, float? Grade)>> StudentGrades { get; set; }

        public async Task OnGetAsync(int id)
        {
            CourseId = id; // Use the passed id directly

            Courses = await _context.Courses.ToListAsync();

            if (CourseId > 0)
            {
                var studentsInCourse = await _context.Enrollments
                    .Where(e => e.CourseId == CourseId)
                    .Select(e => e.UserId)
                    .ToListAsync();

                var assignmentsInCourse = await _context.Assignments
                    .Where(a => a.CourseId == CourseId)
                    .ToListAsync();

                var submissions = await _context.Submissions
                    .Where(s => assignmentsInCourse.Select(a => a.AssignmentId).Contains(s.AssignmentId))
                    .ToListAsync();

                var users = await _context.Users
                    .Where(u => studentsInCourse.Contains(u.Id))
                    .ToListAsync();

                StudentGrades = users.ToDictionary(
                    u => $"{u.FirstName} {u.LastName}",
                    u => assignmentsInCourse.Select(a => {
                        var submission = submissions.FirstOrDefault(s => s.AssignmentId == a.AssignmentId && s.UserId == u.Id);
                        return (a.AssignmentTitle, submission?.Grade);
                    }).ToList()
                );
            }
        }

        public async Task<IActionResult> OnPostAsync()
        {
            return RedirectToPage(new { id = CourseId });
        }
    }
}
