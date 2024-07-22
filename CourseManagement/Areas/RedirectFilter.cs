using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;

namespace CourseManagement.Areas
{
    public class RedirectFilter : IAuthorizationFilter
    {
        public void OnAuthorization(AuthorizationFilterContext context)
        {
            if (context.HttpContext.User.Identity.IsAuthenticated &&
                context.HttpContext.User.IsInRole("admin"))
            {
                if (context.HttpContext.Request.Path == "/Index" ||
                    context.HttpContext.Request.Path == "/")
                {
                    context.Result = new RedirectResult("/Admin/Index");
                }
            }
            if (context.HttpContext.User.Identity.IsAuthenticated &&
                context.HttpContext.User.IsInRole("teacher"))
            {
                if (context.HttpContext.Request.Path == "/Index" ||
                    context.HttpContext.Request.Path == "/")
                {
                    context.Result = new RedirectResult("/Teacher/Index");
                }
            }
        }
    }
}
