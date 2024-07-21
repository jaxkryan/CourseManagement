using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using CourseManagement.Models;
using CourseManagement.Pages.Service;

namespace CourseManagement.Areas.Teacher.Pages.Questions
{
    public class DetailsModel : PageModel
    {
        private readonly CourseManagement.Pages.Service.ApplicationDbContext _context;

        public DetailsModel(CourseManagement.Pages.Service.ApplicationDbContext context)
        {
            _context = context;
        }

      public Question Question { get; set; } = default!; 

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null || _context.Questions == null)
            {
                return NotFound();
            }

            var question = await _context.Questions.FirstOrDefaultAsync(m => m.Qid == id);
            if (question == null)
            {
                return NotFound();
            }
            else 
            {
                Question = question;
            }
            return Page();
        }
    }
}
