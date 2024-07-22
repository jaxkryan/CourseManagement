using CourseManagement.Models;
using CourseManagement.Pages.Service;
using IdentityServer4.Extensions;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CourseManagement.Pages
{
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
                    // Handle validation errors if any
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

                // Save submission to get SubmissionId
                await _context.Submissions.AddAsync(submission);
                await _context.SaveChangesAsync(); // Save submission to get SubmissionId

                float correct = 0;

                foreach (var (questionId, selectedOption) in selectedAnswers)
                {
                    var question = await _context.Questions.FindAsync(questionId);
                    if (question != null && selectedOption != null)
                    {
                        bool isCorrect = (question.Correctans.Equals(selectedOption));
                        if (isCorrect)
                        {
                            correct++;
                        }
                        StudentResponse response = new StudentResponse
                        {
                            QuestionId = questionId,
                            SubmissionId = submission.SubmissionId, // Assign SubmissionId from saved submission
                            SelectedAnswer = selectedOption.ToString(),
                            IsCorrect = isCorrect
                        };
                        studentResponses.Add(response);
                    }
                }

                // Calculate grade
                float total = _context.AssignmentQuestion.Count(q => q.AssignmentId == assignmentId);
                submission.Grade = (correct / total) * 100;
                Console.WriteLine($"-------------------------- correct: {correct}, total: {total}");

                // Save all student responses
                await _context.StudentResponses.AddRangeAsync(studentResponses);
                await _context.SaveChangesAsync();

                // Redirect to AssignmentResultModel and pass submissionId as query string
                return RedirectToPage("/AssignmentResult", new { submissionId = submission.SubmissionId });
            }
            catch (Exception ex)
            {
                // Log exception for debugging
                Console.WriteLine($"---------------------------------- Exception occurred: {ex.Message}");
                throw; // Rethrow exception to display error page or handle it appropriately
            }
        }
    }
}