using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace CourseManagement.Areas.Parent.Pages
{
    [Authorize(Roles = "parent")]
    public class IndexModel : PageModel
    {
        public void OnGet()
        {
        }
    }
}
