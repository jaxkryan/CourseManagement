using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CourseManagement.Migrations
{
    public partial class StudentResponseInDbContext : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_StudentResponse_Questions_QuestionId",
                table: "StudentResponse");

            migrationBuilder.DropForeignKey(
                name: "FK_StudentResponse_Submissions_SubmissionId",
                table: "StudentResponse");

            migrationBuilder.DropPrimaryKey(
                name: "PK_StudentResponse",
                table: "StudentResponse");

            migrationBuilder.RenameTable(
                name: "StudentResponse",
                newName: "StudentResponses");

            migrationBuilder.RenameIndex(
                name: "IX_StudentResponse_SubmissionId",
                table: "StudentResponses",
                newName: "IX_StudentResponses_SubmissionId");

            migrationBuilder.RenameIndex(
                name: "IX_StudentResponse_QuestionId",
                table: "StudentResponses",
                newName: "IX_StudentResponses_QuestionId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_StudentResponses",
                table: "StudentResponses",
                column: "StudentResponseId");

            migrationBuilder.AddForeignKey(
                name: "FK_StudentResponses_Questions_QuestionId",
                table: "StudentResponses",
                column: "QuestionId",
                principalTable: "Questions",
                principalColumn: "Qid",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_StudentResponses_Submissions_SubmissionId",
                table: "StudentResponses",
                column: "SubmissionId",
                principalTable: "Submissions",
                principalColumn: "SubmissionId",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_StudentResponses_Questions_QuestionId",
                table: "StudentResponses");

            migrationBuilder.DropForeignKey(
                name: "FK_StudentResponses_Submissions_SubmissionId",
                table: "StudentResponses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_StudentResponses",
                table: "StudentResponses");

            migrationBuilder.RenameTable(
                name: "StudentResponses",
                newName: "StudentResponse");

            migrationBuilder.RenameIndex(
                name: "IX_StudentResponses_SubmissionId",
                table: "StudentResponse",
                newName: "IX_StudentResponse_SubmissionId");

            migrationBuilder.RenameIndex(
                name: "IX_StudentResponses_QuestionId",
                table: "StudentResponse",
                newName: "IX_StudentResponse_QuestionId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_StudentResponse",
                table: "StudentResponse",
                column: "StudentResponseId");

            migrationBuilder.AddForeignKey(
                name: "FK_StudentResponse_Questions_QuestionId",
                table: "StudentResponse",
                column: "QuestionId",
                principalTable: "Questions",
                principalColumn: "Qid",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_StudentResponse_Submissions_SubmissionId",
                table: "StudentResponse",
                column: "SubmissionId",
                principalTable: "Submissions",
                principalColumn: "SubmissionId",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
