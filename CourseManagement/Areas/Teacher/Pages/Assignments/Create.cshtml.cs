using System;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using CourseManagement.Models;
using CourseManagement.Pages.Service;
using Microsoft.EntityFrameworkCore;

namespace CourseManagement.Areas.Teacher.Pages.Assignments
{
    public class CreateModel : PageModel
    {
        private readonly ApplicationDbContext _context;

        public CreateModel(ApplicationDbContext context)
        {
            _context = context;
        }

        public IList<SelectListItem> CourseList { get; set; } = new List<SelectListItem>();

        public async Task<IActionResult> OnGetAsync()
        {
            CourseList = await _context.Courses
                .Select(c => new SelectListItem
                {
                    Value = c.CourseId.ToString(),
                    Text = c.CourseName
                }).ToListAsync();

            return Page();
        }

        public async Task<IActionResult> OnPostAsync()
        {
            var assignmentTitle = Request.Form["AssignmentTitle"];
            var description = Request.Form["Description"];
            var dueDate = DateTime.Parse(Request.Form["DueDate"]);
            var courseId = int.Parse(Request.Form["CourseId"]);

            var assignment = new Assignment
            {
                AssignmentTitle = assignmentTitle,
                Description = description,
                DueDate = dueDate,
                CourseId = courseId,
                CreatedAt = DateTime.UtcNow
            };

            _context.Assignments.Add(assignment);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }

    }
}
