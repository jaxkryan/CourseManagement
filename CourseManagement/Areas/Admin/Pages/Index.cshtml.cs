using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace CourseManagement.Areas.Admin.Pages
{
    [Authorize(Roles = "admin")]
    public class IndexModel : PageModel
    {
        public void OnGet()
        {
        }
    }
}
