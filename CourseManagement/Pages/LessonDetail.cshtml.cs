using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace CourseManagement.Pages
{
    public class LessonDetailModel : PageModel
    {
        public int LessonId { get; private set; }

        public void OnGet(int lessonId)
        {
            LessonId = lessonId;
        }
    }
}
