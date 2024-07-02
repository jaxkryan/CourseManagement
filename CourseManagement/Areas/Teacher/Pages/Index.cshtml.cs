using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace CourseManagement.Areas.Teacher.Pages
{
    [Authorize(Roles = "teacher")]
    public class IndexModel : PageModel
    {
        public void OnGet()
        {
        }
    }
}
