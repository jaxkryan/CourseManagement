using System;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using CourseManagement.Models;
using CourseManagement.Pages.Service;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;

namespace CourseManagement.Areas.Teacher.Pages.Assignments
{
    [Authorize(Roles = "teacher")]
    public class CreateModel : PageModel
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<WebUser> _userManager;

        public CreateModel(ApplicationDbContext context, UserManager<WebUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        public IList<SelectListItem> CourseList { get; set; } = new List<SelectListItem>();

        public async Task<IActionResult> OnGetAsync()
        {
            var currentUser = await _userManager.GetUserAsync(User);
            if (currentUser == null)
            {
                return NotFound();
            }

            CourseList = await _context.Courses
                .Where(c => c.InstructorId == currentUser.Id)
                .Select(c => new SelectListItem
                {
                    Value = c.CourseId.ToString(),
                    Text = c.CourseName
                }).ToListAsync();

            return Page();
        }

        public async Task<IActionResult> OnPostAsync()
        {
            var currentUser = await _userManager.GetUserAsync(User);
            if (currentUser == null)
            {
                return NotFound();
            }

            var assignmentTitle = Request.Form["AssignmentTitle"];
            var description = Request.Form["Description"];
            var dueDate = DateTime.Parse(Request.Form["DueDate"]);
            var courseId = int.Parse(Request.Form["CourseId"]);

            // Verify that the course belongs to the current user
            var course = await _context.Courses
                .FirstOrDefaultAsync(c => c.CourseId == courseId && c.InstructorId == currentUser.Id);

            if (course == null)
            {
                return NotFound();
            }

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