using CourseManagement.Models;
using CourseManagement.EmailSender;
using CourseManagement.Pages.Service;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication.Google;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System.Configuration;
using Microsoft.AspNetCore.Mvc.RazorPages;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddRazorPages();

builder.Services.AddDbContext<ApplicationDbContext>(options =>
{
    var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");
    options.UseSqlServer(connectionString);

});

builder.Services.AddDefaultIdentity<WebUser>(options => options.SignIn.RequireConfirmedAccount = false)
    .AddRoles<IdentityRole>()
    .AddEntityFrameworkStores<ApplicationDbContext>();


var services = builder.Services;
var configuration = builder.Configuration;
services.AddOptions();                                        // Kích hoạt Options
var mailsettings = builder.Configuration.GetSection("MailSettings");
services.AddTransient<ISendMailService, SendMailService>();
services.Configure<MailSettings>(builder.Configuration.GetSection("MailSettings"));

services.AddAuthentication()
    .AddGoogle(googleOptions =>
    {
        IConfigurationSection googleAuthNSection = configuration.GetSection("Authentication:Google");

        googleOptions.ClientId = googleAuthNSection["ClientId"];
        googleOptions.ClientSecret = googleAuthNSection["ClientSecret"];
        googleOptions.CallbackPath = "/google-login";
        googleOptions.Events.OnRemoteFailure = context =>
        {
            context.HandleResponse();
            var redirectUrl = "Identity/Account/Login";
            context.Response.Redirect(redirectUrl);
            return Task.CompletedTask;
        };

    });
services.Configure<IdentityOptions>(options => {
    // Thiết lập về Password
    options.Password.RequireDigit = false; // Không bắt phải có số
    options.Password.RequireLowercase = false; // Không bắt phải có chữ thường
    options.Password.RequireNonAlphanumeric = false; // Không bắt ký tự đặc biệt
    options.Password.RequireUppercase = false; // Không bắt buộc chữ in
    options.Password.RequiredLength = 3; // Số ký tự tối thiểu của password
    options.Password.RequiredUniqueChars = 1; // Số ký tự riêng biệt

    // Cấu hình Lockout - khóa user
    options.Lockout.DefaultLockoutTimeSpan = TimeSpan.FromMinutes(10080); // Khóa 10080 phút~1 tuần 
    //options.Lockout.MaxFailedAccessAttempts = 5; // Thất bại 5 lần thì khóa
    options.Lockout.AllowedForNewUsers = true;

    // Cấu hình về User.
    options.User.AllowedUserNameCharacters = // các ký tự đặt tên user
        "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._@+";
    options.User.RequireUniqueEmail = true;  // Email là duy nhất

    // Cấu hình đăng nhập.
    options.SignIn.RequireConfirmedEmail = true;            // Cấu hình xác thực địa chỉ email (email phải tồn tại)
    options.SignIn.RequireConfirmedPhoneNumber = false;     // Xác thực số điện thoại
    options.SignIn.RequireConfirmedAccount = true;
});
//builder.Services.AddAuthentication(options =>
//{
//    options.DefaultScheme = CookieAuthenticationDefaults.AuthenticationScheme;
//    options.DefaultChallengeScheme = GoogleDefaults.AuthenticationScheme;
//}).AddCookie()
//.AddGoogle(GoogleDefaults.AuthenticationScheme, options =>
//{
//    options.ClientId = builder.Configuration.GetSection("Google: ClientId").Value;
//    options.ClientSecret = builder.Configuration.GetSection("Google: ClientSecret").Value;
//});
var app = builder.Build();
// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}


app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();
app.UseAuthentication(); ;

app.UseAuthorization();

app.MapRazorPages();

app.Run();



