using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace CourseManagement.Areas.Student.Pages
{
    public class SearchAndFilterModel : PageModel
    {
        public void OnGet(string searchText)
        {
            ViewData["text"] = searchText;
        }
    }
}
