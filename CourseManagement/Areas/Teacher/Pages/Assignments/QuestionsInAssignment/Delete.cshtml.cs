using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using CourseManagement.Models;
using CourseManagement.Pages.Service;

namespace CourseManagement.Areas.Teacher.Pages.Assignments.QuestionsInAssignment
{
    public class DeleteModel : PageModel
    {
        private readonly ApplicationDbContext _context;

        public DeleteModel(ApplicationDbContext context)
        {
            _context = context;
        }

        [BindProperty]
        public AssignmentQuestion AssignmentQuestion { get; set; } = default!;

        public async Task<IActionResult> OnGetAsync(int assignmentId, int questionId)
        {
            AssignmentQuestion = await _context.AssignmentQuestion
                .Include(aq => aq.Question)
                .FirstOrDefaultAsync(m => m.AssignmentId == assignmentId && m.QuestionId == questionId);

            if (AssignmentQuestion == null)
            {
                return NotFound();
            }
            return Page();
        }

        public async Task<IActionResult> OnPostAsync()
        {
            var assignmentQuestion = await _context.AssignmentQuestion
                .FindAsync(AssignmentQuestion.AssignmentId, AssignmentQuestion.QuestionId);

            if (assignmentQuestion != null)
            {
                _context.AssignmentQuestion.Remove(assignmentQuestion);
                await _context.SaveChangesAsync();
            }

            return RedirectToPage("./Index", new { assignmentId = AssignmentQuestion.AssignmentId });
        }
    }
}
