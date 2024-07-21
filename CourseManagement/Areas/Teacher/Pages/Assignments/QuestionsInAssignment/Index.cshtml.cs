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
    public class IndexModel : PageModel
    {
        private readonly ApplicationDbContext _context;

        public IndexModel(ApplicationDbContext context)
        {
            _context = context;
        }

        public IList<AssignmentQuestion> AssignmentQuestions { get; set; } = default!;
        public int AssignmentId { get; set; }

        public async Task OnGetAsync(int assignmentId)
        {
            AssignmentId = assignmentId;
            AssignmentQuestions = await _context.AssignmentQuestion
                .Include(aq => aq.Question)
                .Where(aq => aq.AssignmentId == assignmentId)
                .ToListAsync();
        }
    }
}
