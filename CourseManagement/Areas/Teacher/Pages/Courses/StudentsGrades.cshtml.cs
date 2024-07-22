using CourseManagement.Models;
using CourseManagement.Pages.Service;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using OfficeOpenXml;

namespace CourseManagement.Areas.Teacher.Pages.Courses
{
    [Authorize(Roles = "teacher")]
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
                    u => assignmentsInCourse.Select(a =>
                    {
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
        public async Task<IActionResult> OnPostExportToExcelAsync(int courseId)
        {
            // Update courseId
            CourseId = courseId;

            // Fetch student grades for the course
            await GetStudentGradesAsync(CourseId);

            // Export to Excel
            return await ExportToExcelAsync();
        }
        public async Task<IActionResult> ExportToExcelAsync()
        {
            // Fetch student grades for the course
            await GetStudentGradesAsync(CourseId);

            // Check if there are grades to export
            if (StudentGrades == null || !StudentGrades.Any())
            {
                return NotFound("No grades available for export.");
            }

            // Create a new Excel package
            using (var package = new ExcelPackage())
            {
                // Add a worksheet to the package
                var worksheet = package.Workbook.Worksheets.Add("Student Grades");

                // Add headers
                worksheet.Cells[1, 1].Value = "Student";
                worksheet.Cells[1, 2].Value = "Assignment";
                worksheet.Cells[1, 3].Value = "Grade";

                var row = 2;

                // Add data rows
                foreach (var student in StudentGrades)
                {
                    var assignments = student.Value;
                    foreach (var assignment in assignments)
                    {
                        worksheet.Cells[row, 1].Value = student.Key;
                        worksheet.Cells[row, 2].Value = assignment.AssignmentTitle;
                        worksheet.Cells[row, 3].Value = assignment.Grade.HasValue ? assignment.Grade.Value.ToString("F2") : "N/A";
                        row++;
                    }
                }

                // Prepare the file for download
                var stream = new MemoryStream();
                package.SaveAs(stream);
                stream.Position = 0;

                // Return the file
                var fileName = $"StudentGrades_{CourseId}.xlsx";
                return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", fileName);
            }
        }

        private async Task GetStudentGradesAsync(int courseId)
        {
            // Fetch students enrolled in the course
            var studentsInCourse = await _context.Enrollments
                .Where(e => e.CourseId == courseId)
                .Select(e => e.UserId)
                .ToListAsync();

            // Fetch assignments for the course
            var assignmentsInCourse = await _context.Assignments
                .Where(a => a.CourseId == courseId)
                .ToListAsync();

            // Fetch submissions related to the assignments
            var submissions = await _context.Submissions
                .Where(s => assignmentsInCourse.Select(a => a.AssignmentId).Contains(s.AssignmentId))
                .ToListAsync();

            // Fetch user details for the students
            var users = await _context.Users
                .Where(u => studentsInCourse.Contains(u.Id))
                .ToListAsync();

            // Map students to their grades
            StudentGrades = users.ToDictionary(
                u => $"{u.FirstName} {u.LastName}",
                u => assignmentsInCourse.Select(a =>
                {
                    var submission = submissions.FirstOrDefault(s => s.AssignmentId == a.AssignmentId && s.UserId == u.Id);
                    return (a.AssignmentTitle, submission?.Grade);
                }).ToList()
            );
        }



    }
}
