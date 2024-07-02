using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CourseManagement.Migrations
{
    public partial class UpdateImage : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "0b3992f7-2a59-4539-b11f-b5d5e86f2857");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "8a9d4944-de42-4bd1-b362-af9f2dd60bc6");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "b8999007-c74c-4127-b9b2-ecf529649059");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "d4fb020a-9819-48f1-b32a-a54c81b5a73a");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "fbadff87-faf8-449a-b3de-89cfb419d32e");

            migrationBuilder.AddColumn<string>(
                name: "Link",
                table: "Lessons",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Image",
                table: "Courses",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Image",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[,]
                {
                    { "18494311-a5b4-41ea-91c8-5f26b852f2e4", "b7ed27ef-bb85-4b87-beff-2d91107bb580", "parent", "parent" },
                    { "5f39a7a5-9fe6-4277-8554-67b995bf0e84", "69972cef-d59e-4a8e-8be3-96857e0d3a6e", "guest", "guest" },
                    { "7844718c-cca3-4712-beb1-9799e7f50474", "60fba960-8135-4cdc-a9df-edc9af79e3b1", "student", "student" },
                    { "96be5dad-3ae1-4f82-86d2-86e650926825", "67ad38e3-61ce-47d5-a221-2aa387ea2854", "admin", "admin" },
                    { "d670e411-91a5-4588-bf87-c2f038b8d631", "6dd84d0e-8a4a-41d4-ac3c-56388ab1d5a4", "teacher", "teacher" }
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "18494311-a5b4-41ea-91c8-5f26b852f2e4");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "5f39a7a5-9fe6-4277-8554-67b995bf0e84");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "7844718c-cca3-4712-beb1-9799e7f50474");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "96be5dad-3ae1-4f82-86d2-86e650926825");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "d670e411-91a5-4588-bf87-c2f038b8d631");

            migrationBuilder.DropColumn(
                name: "Link",
                table: "Lessons");

            migrationBuilder.DropColumn(
                name: "Image",
                table: "Courses");

            migrationBuilder.DropColumn(
                name: "Image",
                table: "AspNetUsers");

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[,]
                {
                    { "0b3992f7-2a59-4539-b11f-b5d5e86f2857", "861c83d0-c60e-4445-83f1-0ae67401c919", "admin", "admin" },
                    { "8a9d4944-de42-4bd1-b362-af9f2dd60bc6", "fa878260-9b4f-4160-8ebc-cb8d91e1d225", "parent", "parent" },
                    { "b8999007-c74c-4127-b9b2-ecf529649059", "ce5fa3cd-b18f-4631-8d5c-227599212b57", "student", "student" },
                    { "d4fb020a-9819-48f1-b32a-a54c81b5a73a", "032bbf4b-d40f-4788-a348-3574089ccfe6", "teacher", "teacher" },
                    { "fbadff87-faf8-449a-b3de-89cfb419d32e", "58c589b6-c3ed-4133-ba08-822e035423b6", "guest", "guest" }
                });
        }
    }
}
