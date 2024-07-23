using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using CourseManagement.Models;
using CourseManagement.Pages.Service;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;

namespace CourseManagement.Areas.Teacher.Pages.Assignments
{
    [Authorize(Roles = "teacher")]
    public class EditModel : PageModel
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<WebUser> _userManager;

        public EditModel(ApplicationDbContext context, UserManager<WebUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        [BindProperty]
        public Assignment Assignment { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var currentUser = await _userManager.GetUserAsync(User);
            if (currentUser == null)
            {
                return NotFound();
            }

            Assignment = await _context.Assignments
                .Include(a => a.Course)
                .FirstOrDefaultAsync(m => m.AssignmentId == id && m.Course.InstructorId == currentUser.Id);

            if (Assignment == null)
            {
                return NotFound();
            }

            ViewData["CourseId"] = new SelectList(await _context.Courses
                .Where(c => c.InstructorId == currentUser.Id)
                .Select(c => new { c.CourseId, c.CourseName })
                .ToListAsync(), "CourseId", "CourseName");

            return Page();
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            var currentUser = await _userManager.GetUserAsync(User);
            if (currentUser == null)
            {
                return NotFound();
            }

            var assignmentToUpdate = await _context.Assignments
                .Include(a => a.Course)
                .FirstOrDefaultAsync(m => m.AssignmentId == Assignment.AssignmentId && m.Course.InstructorId == currentUser.Id);

            if (assignmentToUpdate == null)
            {
                return NotFound();
            }

            if (await TryUpdateModelAsync<Assignment>(
                assignmentToUpdate,
                "Assignment",
                a => a.AssignmentTitle, a => a.Description, a => a.DueDate, a => a.CourseId))
            {
                try
                {
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!AssignmentExists(Assignment.AssignmentId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToPage("./Index");
            }

            // If we got this far, something failed, redisplay form
            ViewData["CourseId"] = new SelectList(await _context.Courses
                .Where(c => c.InstructorId == currentUser.Id)
                .Select(c => new { c.CourseId, c.CourseName })
                .ToListAsync(), "CourseId", "CourseName");

            return Page();
        }

        private bool AssignmentExists(int id)
        {
            return _context.Assignments.Any(e => e.AssignmentId == id);
        }
    }
}