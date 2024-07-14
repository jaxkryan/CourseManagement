using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CourseManagement.Migrations
{
    public partial class AddLevelToLessonAndCreateQuestionTable : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {

            migrationBuilder.AddColumn<string>(
                name: "Level",
                table: "Lessons",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.CreateTable(
                name: "Questions",
                columns: table => new
                {
                    Qid = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    QContent = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Opt1 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Opt2 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Opt3 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Opt4 = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Questions", x => x.Qid);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Questions");

            migrationBuilder.DropColumn(
                name: "Level",
                table: "Lessons");
        }
    }
}
