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

namespace CourseManagement.Areas.Teacher.Pages.Assignments.QuestionsInAssignment
{
    [Authorize(Roles = "teacher")]
    public class EditModel : PageModel
    {
        private readonly ApplicationDbContext _context;

        public EditModel(ApplicationDbContext context)
        {
            _context = context;
        }

        [BindProperty]
        public AssignmentQuestion AssignmentQuestion { get; set; } = default!;

        public async Task<IActionResult> OnGetAsync(int assignmentId)
        {
            AssignmentQuestion = new AssignmentQuestion { AssignmentId = assignmentId };

            // Get the IDs of questions already assigned to this assignment
            var assignedQuestionIds = await _context.AssignmentQuestion
                .Where(aq => aq.AssignmentId == assignmentId)
                .Select(aq => aq.QuestionId)
                .ToListAsync();

            // Get all questions that are not in the assigned questions list
            var availableQuestions = await _context.Questions
                .Where(q => !assignedQuestionIds.Contains(q.Qid))
                .ToListAsync();

            if (availableQuestions != null && availableQuestions.Any())
            {
                ViewData["QuestionId"] = new SelectList(availableQuestions, "Qid", "QContent");
            }
            else
            {
                ViewData["QuestionId"] = new SelectList(new List<Question>());
            }

            return Page();
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Attach(AssignmentQuestion).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AssignmentQuestionExists(AssignmentQuestion.AssignmentId, AssignmentQuestion.QuestionId))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return RedirectToPage("./Index", new { assignmentId = AssignmentQuestion.AssignmentId });
        }

        private bool AssignmentQuestionExists(int assignmentId, int questionId)
        {
            return _context.AssignmentQuestion.Any(e => e.AssignmentId == assignmentId && e.QuestionId == questionId);
        }
    }
}
