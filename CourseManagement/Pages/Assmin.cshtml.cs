using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace CourseManagement.Pages
{
    [Authorize(Roles = "admin")]
    public class AssminModel : PageModel
    {
        public void OnGet()
        {
        }
    }
}
