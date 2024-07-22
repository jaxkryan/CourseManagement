using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using CourseManagement.Models;
using CourseManagement.Pages.Service;

namespace CourseManagement.Areas.Admin.Pages
{
    public class IndexModel : PageModel
    {
        private readonly CourseManagement.Pages.Service.ApplicationDbContext _context;

        public IndexModel(CourseManagement.Pages.Service.ApplicationDbContext context)
        {
            _context = context;
        }
        public IList<CourseManagement.Models.Teacher> Teacher { get;set; } = default!;

        public async Task OnGetAsync()
        {
            if (_context.Teachers != null)
            {
                Teacher = await _context.Teachers
                .Include(t => t.User).ToListAsync();
            }
        }
    }
}
