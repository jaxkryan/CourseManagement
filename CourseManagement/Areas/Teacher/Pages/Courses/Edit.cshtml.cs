using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using CourseManagement.Models;
using CourseManagement.Pages.Service;
using System.Diagnostics;
using Microsoft.CodeAnalysis;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;

namespace CourseManagement.Areas.Teacher.Pages.Courses
{
    [Authorize(Roles = "teacher")]
    public class EditModel : PageModel
    {
        private readonly UserManager<WebUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly CourseManagement.Pages.Service.ApplicationDbContext _context;

        public EditModel(CourseManagement.Pages.Service.ApplicationDbContext context, UserManager<WebUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            _context = context;
            _userManager = userManager;
            _roleManager = roleManager;
        }
        public class UserWithRoles
        {
            public string Id { get; set; }
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public string Email { get; set; }
            public DateTime Dob { get; set; }
            public string Address { get; set; }
            public bool IsActive { get; set; }
            public List<string> Roles { get; set; }
        }
        [BindProperty]
        public Course Course { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Course = await _context.Courses
                .Include(c => c.Instructor).FirstOrDefaultAsync(m => m.CourseId == id);

            if (Course == null)
            {
                return NotFound();
            } 
            // Fetch and populate the list of teachers
            var teachers = await GetTeachersAsync();
            ViewData["InstructorId"] = new SelectList(teachers, "Value", "Text");
            return Page();

        }

        private async Task<List<SelectListItem>> GetTeachersAsync()
        {
            // Fetch all users
            var Teachers = new List<WebUser>();

            // Ensure the "teacher" role exists
            var teacherRole = await _roleManager.FindByNameAsync("teacher");
            if (teacherRole == null)
            {
                // Handle the case where the "teacher" role does not exist
                Teachers = new List<WebUser>();
            }

            // Get users with the "teacher" role
            var usersInRole = await _userManager.GetUsersInRoleAsync("teacher");
            Teachers = usersInRole.Where(u => u.IsActive).ToList();
            return Teachers.Select(u => new SelectListItem
            {
                Value = u.Id,
                Text = $"{u.FirstName} {u.LastName}"
            }).ToList();
        }

        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                var errors = ModelState
    .Where(x => x.Value.Errors.Count > 0)
    .Select(x => new { x.Key, x.Value.Errors })
    .ToArray();
                ViewData["InstructorId"] = errors;
                return Page();
            }

            _context.Attach(Course).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CourseExists(Course.CourseId))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return RedirectToPage("./Index");
        }

        private bool CourseExists(int id)
        {
            return _context.Courses.Any(e => e.CourseId == id);
        }
    }
}
