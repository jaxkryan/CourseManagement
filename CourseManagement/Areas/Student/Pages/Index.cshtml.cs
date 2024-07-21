using CourseManagement.Models;
using CourseManagement.Pages.Service;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;


namespace CourseManagement.Areas.Student.Pages
{
    [Authorize(Roles = "student")]
    public class IndexModel : PageModel
    {
        private readonly UserManager<WebUser> _userManager;
        private readonly ApplicationDbContext _context;

        public WebUser CurrentUser { get; private set; }

        public IndexModel(UserManager<WebUser> userManager, ApplicationDbContext context)
        {
            _userManager = userManager;
            _context = context;
        }

        public async Task<IActionResult> OnGetAsync()
        {
            CurrentUser = await _userManager.GetUserAsync(User);
            if (CurrentUser == null)
            {
                return NotFound($"Unable to load user with ID '{_userManager.GetUserId(User)}'.");
            }
            List<Course> courses = new List<Course>();
            courses = _context.Courses.Include(c => c.Lessons).Include(c => c.Assignments).Include(c => c.Enrollments).ToList();
            ViewData["listCourses"] = courses;
            return Page();
        }

        public IActionResult OnGetSearch(string searchText)
        {
            return RedirectToPage("/Student/SearchAndFilter", searchText);
        }
    }
}
