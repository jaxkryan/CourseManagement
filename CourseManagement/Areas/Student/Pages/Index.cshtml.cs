using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace CourseManagement.Areas.Student.Pages
{
    [Authorize(Roles = "student")]
    public class IndexModel : PageModel
    {
        public void OnGet()
        {
        }
    }
}
