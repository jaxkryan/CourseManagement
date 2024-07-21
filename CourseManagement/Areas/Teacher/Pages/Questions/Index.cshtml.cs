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
    public class IndexModel : PageModel
    {
        private readonly CourseManagement.Pages.Service.ApplicationDbContext _context;

        public IndexModel(CourseManagement.Pages.Service.ApplicationDbContext context)
        {
            _context = context;
        }

        public IList<Question> Question { get;set; } = default!;

        public async Task OnGetAsync()
        {
            if (_context.Questions != null)
            {
                Question = await _context.Questions.ToListAsync();
            }
        }
    }
}
