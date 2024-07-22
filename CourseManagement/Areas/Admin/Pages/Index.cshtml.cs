using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using CourseManagement.Models;
using CourseManagement.Pages.Service;

namespace CourseManagement.Areas.Admin.Pages
{
    public class IndexModel : PageModel
    {
        private readonly UserManager<WebUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly ApplicationDbContext _context;

        public IndexModel(UserManager<WebUser> userManager, RoleManager<IdentityRole> roleManager, ApplicationDbContext context)
        {
            _userManager = userManager;
            _roleManager = roleManager;
            _context = context;
        }

        public IList<WebUser> Teachers { get; set; } = default!;

        public async Task OnGetAsync()
        {
            var teacherRole = await _roleManager.FindByNameAsync("teacher");
            if (teacherRole == null)
            {
                Teachers = new List<WebUser>();
                return;
            }
            var usersInRole = await _userManager.GetUsersInRoleAsync("teacher");
            Teachers = usersInRole.Where(u => u.IsActive).ToList();
        }

        public async Task<IActionResult> OnGetDeleteAsync(string userId)
        {
            if (string.IsNullOrEmpty(userId))
            {
                return BadRequest("User ID is required.");
            }

            var user = await _userManager.FindByIdAsync(userId);
            if (user == null)
            {
                return NotFound($"Unable to find user with ID '{userId}'.");
            }

            user.IsActive = false;
            await _userManager.UpdateAsync(user);

            return RedirectToPage();
        }
    }
}