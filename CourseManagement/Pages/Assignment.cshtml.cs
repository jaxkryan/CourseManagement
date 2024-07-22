using CourseManagement.Models;
using CourseManagement.Pages.Service;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Org.BouncyCastle.Security;

namespace CourseManagement.Pages
{
    public class AssignmentModel : PageModel
    {
        private readonly ApplicationDbContext _context;
        public int AssignmentId { get; private set; }
        public List<Question> Questions { get; private set; }
        public AssignmentModel(ApplicationDbContext context)
        {
            _context = context;
        }
        public void OnGet(int assignmentId)
        {
            AssignmentId = assignmentId;
            LoadQuestions();
        }

        private void LoadQuestions()
        {
            Questions = _context.AssignmentQuestion
                .Where(aq => aq.AssignmentId == AssignmentId)
                .Select(aq => aq.Question)
                .ToList();
        }

        private List<StudentResponse> listAnswers = new List<StudentResponse>();

        public void OnPostSubmit(Dictionary<int, string> selectedAnswers)
        {
            List<StudentResponse> studentResponses = new List<StudentResponse>();

            foreach (var (questionId, selectedAnswer) in selectedAnswers)
            {
                int selectedOption = int.Parse(selectedAnswer);
                Question question = _context.Questions.Find(questionId);

                if (question != null)
                {
                    bool isCorrect = (int.Parse(question.Correctans) == selectedOption);
                    StudentResponse response = new StudentResponse
                    {
                        QuestionId = questionId,
                        SelectedAnswer = selectedAnswer,
                        IsCorrect = isCorrect
                    };
                    studentResponses.Add(response);
                }

                // Save student responses
                _context.StudentResponses.AddRangeAsync(studentResponses);
                _context.SaveChangesAsync();

                // Reload questions after saving responses
                LoadQuestions();
            }
        }
    }
}
