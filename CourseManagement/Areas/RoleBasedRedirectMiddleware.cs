using CourseManagement.Models;
using Microsoft.AspNetCore.Identity;

namespace CourseManagement.Areas
{
    public class RoleBasedRedirectMiddleware
    {
        private readonly RequestDelegate _next;

        public RoleBasedRedirectMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task InvokeAsync(HttpContext context, UserManager<WebUser> userManager, SignInManager<WebUser> signInManager)
        {
            if (context.User.Identity.IsAuthenticated)
            {
                var user = await userManager.GetUserAsync(context.User);
                var roles = await userManager.GetRolesAsync(user);

                if (roles.Contains("admin") && context.Request.Path.Equals("/index", StringComparison.OrdinalIgnoreCase))
                {
                    context.Response.Redirect("/admin/index");
                    return;
                }
                if (roles.Contains("teacher") && context.Request.Path.Equals("/index", StringComparison.OrdinalIgnoreCase))
                {
                    context.Response.Redirect("/teacher/index");
                    return;
                }
                if (roles.Contains("student") && context.Request.Path.Equals("/index", StringComparison.OrdinalIgnoreCase))
                {
                    context.Response.Redirect("/student/index");
                    return;
                }
            }

            await _next(context);
        }
    }

}
