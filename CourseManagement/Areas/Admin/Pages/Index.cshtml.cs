using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using CourseManagement.Models;

namespace CourseManagement.Areas.Admin.Pages
{
    public class IndexModel : PageModel
    {
        private readonly UserManager<WebUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;

        public IndexModel(UserManager<WebUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            _userManager = userManager;
            _roleManager = roleManager;
        }

        public IList<WebUser> Teachers { get; set; } = default!;

        public async Task OnGetAsync()
        {
            // Ensure the "teacher" role exists
            var teacherRole = await _roleManager.FindByNameAsync("teacher");
            if (teacherRole == null)
            {
                // Handle the case where the "teacher" role does not exist
                Teachers = new List<WebUser>();
                return;
            }

            // Get users with the "teacher" role
            var usersInRole = await _userManager.GetUsersInRoleAsync("teacher");
            Teachers = usersInRole.ToList();
        }
    }
}
