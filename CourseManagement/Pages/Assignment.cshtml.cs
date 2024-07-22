using CourseManagement.Models;
using CourseManagement.Pages.Service;
using IdentityServer4.Extensions;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace CourseManagement.Pages
{
    [Authorize(Roles = "student")]
    public class AssignmentModel : PageModel
    {

        private readonly UserManager<WebUser> _userManager;
        private readonly ApplicationDbContext _context;

        public int AssignId { get; private set; }
        public List<AssignmentQuestion> AssignmentQuestions { get; private set; }

        public AssignmentModel(ApplicationDbContext context, UserManager<WebUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        public async Task<IActionResult> OnGetAsync(int assignmentId)
        {
            AssignId = assignmentId;
            
            AssignmentQuestions = await _context.AssignmentQuestion
                .Where(aq => aq.AssignmentId == AssignId)
                .Include(aq => aq.Question)
                .ToListAsync();
            return Page();
        }

        public async Task<IActionResult> OnPostAsync(Dictionary<int, string?> selectedAnswers, int assignmentId)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Page();
                }

                var currentUser = await _userManager.GetUserAsync(User);
                List<StudentResponse> studentResponses = new List<StudentResponse>();
                Submission submission = new Submission
                {
                    AssignmentId = assignmentId,
                    UserId = currentUser.Id,
                    SubmittedAt = DateTime.Now,
                };

                await _context.Submissions.AddAsync(submission);
                await _context.SaveChangesAsync();

                float correct = 0;

                if (selectedAnswers != null && selectedAnswers.Any())
                {
                    foreach (var (questionId, selectedOption) in selectedAnswers)
                    {
                        // Skip processing for dummy values
                        if (selectedOption == "0")
                        {
                            continue;
                        }

                        var question = await _context.Questions.FindAsync(questionId);
                        if (question != null)
                        {
                            bool isCorrect = !string.IsNullOrEmpty(selectedOption) && question.Correctans.Equals(selectedOption, StringComparison.OrdinalIgnoreCase);
                            if (isCorrect)
                            {
                                correct++;
                            }
                            StudentResponse response = new StudentResponse
                            {
                                QuestionId = questionId,
                                SubmissionId = submission.SubmissionId,
                                SelectedAnswer = selectedOption ?? string.Empty,
                                IsCorrect = isCorrect
                            };
                            studentResponses.Add(response);
                        }
                    }
                }

                float total = _context.AssignmentQuestion.Count(q => q.AssignmentId == assignmentId);
                submission.Grade = (total > 0) ? (correct / total) * 100 : 0;
                Console.WriteLine($"-------------------------- correct: {correct}, total: {total}");

                await _context.StudentResponses.AddRangeAsync(studentResponses);
                await _context.SaveChangesAsync();

                return RedirectToPage("/AssignmentResult", new { submissionId = submission.SubmissionId });
            }
            catch (Exception ex)
            {
                Console.WriteLine($"---------------------------------- Exception occurred: {ex.Message}");
                throw;
            }
        }
    }
}

