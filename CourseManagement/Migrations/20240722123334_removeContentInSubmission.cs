using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CourseManagement.Migrations
{
    public partial class removeContentInSubmission : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_StudentResponses_Submissions_SubmissionId",
                table: "StudentResponses");

            migrationBuilder.DropColumn(
                name: "Content",
                table: "Submissions");

            migrationBuilder.AlterColumn<int>(
                name: "SubmissionId",
                table: "StudentResponses",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AddForeignKey(
                name: "FK_StudentResponses_Submissions_SubmissionId",
                table: "StudentResponses",
                column: "SubmissionId",
                principalTable: "Submissions",
                principalColumn: "SubmissionId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_StudentResponses_Submissions_SubmissionId",
                table: "StudentResponses");

        
            migrationBuilder.AddColumn<string>(
                name: "Content",
                table: "Submissions",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AlterColumn<int>(
                name: "SubmissionId",
                table: "StudentResponses",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_StudentResponses_Submissions_SubmissionId",
                table: "StudentResponses",
                column: "SubmissionId",
                principalTable: "Submissions",
                principalColumn: "SubmissionId",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
