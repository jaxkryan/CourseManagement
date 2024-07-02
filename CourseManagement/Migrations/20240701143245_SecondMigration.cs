using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CourseManagement.Migrations
{
    public partial class SecondMigration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[,]
                {
                    { "26813976-1ce4-402d-bd96-4825f9e11630", "0f1049b6-86c4-4825-bc9c-e7f87552b117", "guest", "guest" },
                    { "568eede8-f7c2-41b6-8530-4ac196784e49", "b6d906c9-d812-4ce6-9ea7-86690feea8cf", "parent", "parent" },
                    { "5a6b687e-3c96-41a8-aeb5-c65bb7b2617d", "b960b395-fa58-44b1-9438-8f2fb05dbe21", "student", "student" },
                    { "b6b1d4a3-8250-4632-9dfe-03d6ca8bfccf", "bdc18a15-5ca8-4d24-b7d4-11dad3f390b8", "teacher", "teacher" },
                    { "d34a8106-e817-4a7e-b299-b9ffcfa52150", "b01e5e77-1dec-46e4-81d3-b663b8bde43e", "admin", "admin" }
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "26813976-1ce4-402d-bd96-4825f9e11630");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "568eede8-f7c2-41b6-8530-4ac196784e49");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "5a6b687e-3c96-41a8-aeb5-c65bb7b2617d");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "b6b1d4a3-8250-4632-9dfe-03d6ca8bfccf");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "d34a8106-e817-4a7e-b299-b9ffcfa52150");
        }
    }
}
