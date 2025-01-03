using CourseManagement.Models;
using CourseManagement.Pages.Service;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CourseManagement.Pages
{
    [Authorize(Roles = "student")]
    public class AssignmentResultModel : PageModel
    {
        private readonly ApplicationDbContext _context;

        public Submission Submission { get; private set; }
        public int CourseId { get; private set; }

        public AssignmentResultModel(ApplicationDbContext context)
        {
            _context = context;
        }

        public void OnGet(int submissionId)
        {
            Submission = _context.Submissions.FirstOrDefault(s => s.SubmissionId == submissionId);
            CourseId = _context.Assignments.Where(c => c.AssignmentId == Submission.AssignmentId).Select(c => c.CourseId).FirstOrDefault();
        }
    }
}