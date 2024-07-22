using CourseManagement.Models;
using CourseManagement.Pages.Service;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CourseManagement.Pages
{
    public class AssignmentResultModel : PageModel
    {
        private readonly ApplicationDbContext _context;

        public Submission Submission { get; private set; }

        public AssignmentResultModel(ApplicationDbContext context)
        {
            _context = context;
        }

        public void OnGet(int submissionId)
        {
            Submission = _context.Submissions.FirstOrDefault(s => s.SubmissionId == submissionId);
        }
    }
}