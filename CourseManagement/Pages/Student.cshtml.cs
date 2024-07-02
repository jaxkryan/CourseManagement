using CourseManagement.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace CourseManagement.Pages
{
    [Authorize(Roles = "student")]
    public class StudentModel : PageModel
    {
        private readonly UserManager<WebUser> userManager;
        public WebUser? webUser;
        public StudentModel(UserManager<WebUser> userManager)
        {
            this.userManager = userManager;
        }
        public void OnGet()
        {
            var task = userManager.GetUserAsync(User);
            task.Wait();
            webUser = task.Result;
        }
    }
}
