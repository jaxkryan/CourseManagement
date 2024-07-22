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
using Microsoft.AspNetCore.Authorization;

namespace CourseManagement.Areas.Admin.Pages
{
    [Authorize(Roles = "admin")]
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

        public IList<UserWithRoles> Users { get; set; } = default!;

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

        public async Task OnGetAsync()
        {
            var users = await _userManager.Users.ToListAsync();
            var userWithRoles = new List<UserWithRoles>();

            foreach (var user in users)
            {
                var roles = await _userManager.GetRolesAsync(user);
                userWithRoles.Add(new UserWithRoles
                {
                    Id = user.Id,
                    FirstName = user.FirstName,
                    LastName = user.LastName,
                    Email = user.Email,
                    Dob = user.Dob,
                    Address = user.Address,
                    IsActive = user.IsActive,
                    Roles = roles.ToList()
                });
            }

            Users = userWithRoles;
        }

        public async Task<IActionResult> OnGetDisableAsync(string userId)
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

            var roles = await _userManager.GetRolesAsync(user);

            if (!roles.Contains("admin"))
            {
                return BadRequest("Admin can't be disabled.");
            }


            user.IsActive = false;
            await _userManager.UpdateAsync(user);

            return RedirectToPage();
        }

        public async Task<IActionResult> OnGetActivateAsync(string userId)
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

            var roles = await _userManager.GetRolesAsync(user);

            //if (!roles.Contains("teacher"))
            //{
            //    return BadRequest("Only teachers can be activated.");
            //}

            user.IsActive = true;
            await _userManager.UpdateAsync(user);

            return RedirectToPage();
        }
    }
}
