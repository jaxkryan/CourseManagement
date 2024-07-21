using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using CourseManagement.Models;
using CourseManagement.Pages.Service;
using Microsoft.EntityFrameworkCore;

namespace CourseManagement.Areas.Teacher.Pages.Courses
{
    public class CreateModel : PageModel
    {
        private readonly CourseManagement.Pages.Service.ApplicationDbContext _context;

        public CreateModel(CourseManagement.Pages.Service.ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
            List<WebUser> teacherUsers = _context.Users
      .Where(u => u.Teacher != null)
      .ToList();

            ViewData["InstructorId"] = new SelectList(teacherUsers, "Id", "Id");
            return Page();
        }

        [BindProperty]
        public Course Course { get; set; }

        // To protect from overposting attacks, see https://aka.ms/RazorPagesCRUD
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Courses.Add(Course);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
