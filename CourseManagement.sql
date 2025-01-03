USE [master]
GO

IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'CourseManagement')
BEGIN
	ALTER DATABASE [CourseManagement] SET OFFLINE WITH ROLLBACK IMMEDIATE;
	ALTER DATABASE [CourseManagement] SET ONLINE;
	DROP DATABASE [CourseManagement];
END
/****** Object:  Database [CourseManagement]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE DATABASE [CourseManagement]

GO
ALTER DATABASE [CourseManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CourseManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CourseManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CourseManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CourseManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [CourseManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CourseManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CourseManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CourseManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CourseManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CourseManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CourseManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CourseManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CourseManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CourseManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CourseManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CourseManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CourseManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CourseManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CourseManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CourseManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CourseManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CourseManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [CourseManagement] SET  MULTI_USER 
GO
ALTER DATABASE [CourseManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CourseManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CourseManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CourseManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CourseManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CourseManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CourseManagement', N'ON'
GO
ALTER DATABASE [CourseManagement] SET QUERY_STORE = ON
GO
ALTER DATABASE [CourseManagement] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CourseManagement]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminId] [nvarchar](450) NOT NULL,
	[Department] [nvarchar](max) NOT NULL,
	[HireDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Dob] [datetime2](7) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssignmentQuestion]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignmentQuestion](
	[AssignmentId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
 CONSTRAINT [PK_AssignmentQuestion] PRIMARY KEY CLUSTERED 
(
	[AssignmentId] ASC,
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assignments]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignments](
	[AssignmentId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[AssignmentTitle] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[DueDate] [datetime2](7) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Assignments] PRIMARY KEY CLUSTERED 
(
	[AssignmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[InstructorId] [nvarchar](450) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrollments]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollments](
	[EnrollmentId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[CourseId] [int] NOT NULL,
	[EnrolledAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Enrollments] PRIMARY KEY CLUSTERED 
(
	[EnrollmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lessons]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lessons](
	[LessonId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[LessonTitle] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Level] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Lessons] PRIMARY KEY CLUSTERED 
(
	[LessonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parents]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parents](
	[ParentId] [nvarchar](450) NOT NULL,
	[StudentId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Parents] PRIMARY KEY CLUSTERED 
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Qid] [int] IDENTITY(1,1) NOT NULL,
	[QContent] [nvarchar](max) NOT NULL,
	[Opt1] [nvarchar](max) NOT NULL,
	[Opt2] [nvarchar](max) NOT NULL,
	[Opt3] [nvarchar](max) NOT NULL,
	[Opt4] [nvarchar](max) NOT NULL,
	[Correctans] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[Qid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentResponses]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentResponses](
	[StudentResponseId] [int] IDENTITY(1,1) NOT NULL,
	[SubmissionId] [int] NULL,
	[QuestionId] [int] NOT NULL,
	[SelectedAnswer] [nvarchar](max) NOT NULL,
	[IsCorrect] [bit] NOT NULL,
 CONSTRAINT [PK_StudentResponses] PRIMARY KEY CLUSTERED 
(
	[StudentResponseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Submissions]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Submissions](
	[SubmissionId] [int] IDENTITY(1,1) NOT NULL,
	[AssignmentId] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[SubmittedAt] [datetime2](7) NOT NULL,
	[Grade] [float] NULL,
 CONSTRAINT [PK_Submissions] PRIMARY KEY CLUSTERED 
(
	[SubmissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 7/22/2024 7:35:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[TeacherId] [nvarchar](450) NOT NULL,
	[Qualification] [nvarchar](max) NOT NULL,
	[Biography] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240701142356_FirstMigration', N'6.0.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240701143245_SecondMigration', N'6.0.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240702033758_UpdateDb', N'6.0.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240702092219_UpdateImage', N'6.0.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240714040111_AddLevelToLessonAndCreateQuestionTable', N'6.0.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240721060739_AddAssignmentQuestionRelationship', N'6.0.32')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240721075807_AddCorrectAnswerToQuestion', N'6.0.32')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240722034919_AddStudentResponse', N'6.0.32')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240722101654_StudentResponseInDbContext', N'6.0.32')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240722103252_AddIsActiveToWebUser', N'6.0.32')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240722123334_removeContentInSubmission', N'6.0.32')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'26813976-1ce4-402d-bd96-4825f9e11630', N'guest', N'guest', N'0f1049b6-86c4-4825-bc9c-e7f87552b117')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'568eede8-f7c2-41b6-8530-4ac196784e49', N'parent', N'parent', N'b6d906c9-d812-4ce6-9ea7-86690feea8cf')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5a6b687e-3c96-41a8-aeb5-c65bb7b2617d', N'student', N'student', N'b960b395-fa58-44b1-9438-8f2fb05dbe21')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b6b1d4a3-8250-4632-9dfe-03d6ca8bfccf', N'teacher', N'teacher', N'bdc18a15-5ca8-4d24-b7d4-11dad3f390b8')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd34a8106-e817-4a7e-b299-b9ffcfa52150', N'admin', N'admin', N'b01e5e77-1dec-46e4-81d3-b663b8bde43e')
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'103452457055059824667', N'Google', N'2df23b4a-cd5b-48ad-90d6-72f6d2f81f20')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'106539073466040439492', N'Google', N'cf43bb08-b822-4504-9ac3-7aa90627de4a')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0aae3efc-f48b-4510-8e65-b44117a1f335', N'568eede8-f7c2-41b6-8530-4ac196784e49')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'19782963-c520-43a6-94f8-b755c095f940', N'5a6b687e-3c96-41a8-aeb5-c65bb7b2617d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cf43bb08-b822-4504-9ac3-7aa90627de4a', N'5a6b687e-3c96-41a8-aeb5-c65bb7b2617d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a4474ccd-b23f-43e8-941a-832372777d27', N'b6b1d4a3-8250-4632-9dfe-03d6ca8bfccf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2df23b4a-cd5b-48ad-90d6-72f6d2f81f20', N'd34a8106-e817-4a7e-b299-b9ffcfa52150')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [Address], [CreatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Image], [IsActive]) VALUES (N'0aae3efc-f48b-4510-8e65-b44117a1f335', N'Parent', N'Tu', CAST(N'2024-07-13T00:00:00.0000000' AS DateTime2), N'kbiet', CAST(N'2024-07-02T23:17:50.2780651' AS DateTime2), N'qwerty@gmail.com', N'QWERTY@GMAIL.COM', N'qwerty@gmail.com', N'QWERTY@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJy4KUjejGe2ftYiQvIVJO/MQ3+JxZsIsBeE6LRflmdYAsfH8drK6KbpXUVTbAHJMg==', N'GF3K5DTFM24SOFWD7FLAXL5GOCV7YA3U', N'c0d23f38-a625-4ecd-bb77-f7d3af7b8d89', N'123452412', 0, 0, NULL, 1, 0, NULL, 1)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [Address], [CreatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Image], [IsActive]) VALUES (N'19782963-c520-43a6-94f8-b755c095f940', N'Student', N'Huy', CAST(N'2024-07-16T00:00:00.0000000' AS DateTime2), N'Chua Hang District', CAST(N'2024-07-02T16:56:57.0648898' AS DateTime2), N'bac@gmail.com', N'BAC@GMAIL.COM', N'bac@gmail.com', N'BAC@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOZxiEaRH8raYBCovnMb9a7OklOS0FOeKMZICzGgNyBs+oxgnnYqDwnIMOICW8bihw==', N'CGLBTYMP3A374H3ZTO6LLA7SDFAJZGZH', N'fe5654aa-50af-4f8c-8470-6518ba489561', N'0942981631', 0, 0, NULL, 1, 0, NULL, 1)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [Address], [CreatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Image], [IsActive]) VALUES (N'2df23b4a-cd5b-48ad-90d6-72f6d2f81f20', N'Admin', N'Huy', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'Chua Hang District', CAST(N'2024-07-02T01:30:30.6190332' AS DateTime2), N'huyg.a22052003@gmail.com', N'HUYG.A22052003@GMAIL.COM', N'huyg.a22052003@gmail.com', N'HUYG.A22052003@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEHrFxHp/K8NU7EZq7ycJFIIsqp0w0JwzzfvZiW1afh44WaAgxPI7e7e+TQV2M7C/iw==', N'CNIG53QNWX4HB4MGRUYNMY6SW72OT6N5', N'cf85b661-fce4-40ff-8e51-9ac168eb03f4', N'0942981631', 0, 0, NULL, 1, 0, NULL, 1)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [Address], [CreatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Image], [IsActive]) VALUES (N'a4474ccd-b23f-43e8-941a-832372777d27', N'Teacher', N'Duc', CAST(N'2024-07-11T00:00:00.0000000' AS DateTime2), N'tn', CAST(N'2024-07-02T23:16:38.9744327' AS DateTime2), N'abcdef@gmail.com', N'ABCDEF@GMAIL.COM', N'abcdef@gmail.com', N'ABCDEF@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEFlQeSL7GK/9kIgVCza2upmIPQBDRU3zDM9L8Tf+nFCZH3F4e9uB3UqLcCnqL76jYg==', N'SVECZPKN5KHV4IDOUQRHYBJ2KA72WZ4K', N'f4e37124-bab2-4bad-8631-c81a8d25312a', N'123456789', 0, 0, NULL, 1, 0, NULL, 1)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [Address], [CreatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Image], [IsActive]) VALUES (N'cf43bb08-b822-4504-9ac3-7aa90627de4a', N'Studentffffffffff', N'haiff', CAST(N'2024-07-23T00:00:00.0000000' AS DateTime2), N'lmao lmao lmaof', CAST(N'2024-07-21T00:18:59.4593400' AS DateTime2), N'huy6ach2@gmail.com', N'HUY6ACH2@GMAIL.COM', N'huy6ach2@gmail.com', N'HUY6ACH2@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEBJvfqUKf4iKCnP1GZX7c3taEJFLkKcJaNi55cI1/z7LIKw3bEDzIrJDTuF/G7rcHQ==', N'RUN62NWKLHLEMN56SIYFEVS4MVDRQ7YU', N'bff554fe-6b8f-454d-84b9-d359251d24b1', N'01234564489', 0, 0, NULL, 1, 0, N'/img/profile/343082451_1364082737470100_8605136179500635074_n.jpg', 1)
GO
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (16, 1)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (3, 2)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (18, 2)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (1, 3)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (4, 3)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (5, 3)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (10, 3)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (13, 3)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (7, 4)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (15, 4)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (1, 5)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (18, 6)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (10, 7)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (13, 7)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (15, 7)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (8, 8)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (8, 9)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (2, 10)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (11, 11)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (11, 12)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (16, 12)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (10, 13)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (1, 14)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (2, 14)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (17, 14)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (4, 15)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (6, 15)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (2, 16)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (6, 16)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (4, 17)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (8, 17)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (14, 17)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (5, 18)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (20, 18)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (6, 19)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (2, 20)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (8, 20)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (13, 20)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (19, 20)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (18, 21)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (4, 22)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (7, 22)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (9, 22)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (20, 22)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (15, 24)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (18, 24)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (3, 25)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (15, 25)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (7, 26)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (9, 26)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (10, 26)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (1, 27)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (11, 27)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (12, 27)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (12, 28)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (18, 28)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (3, 29)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (16, 29)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (19, 29)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (12, 30)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (19, 31)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (3, 32)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (13, 32)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (2, 33)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (6, 33)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (7, 33)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (17, 33)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (20, 33)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (4, 34)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (20, 34)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (13, 37)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (9, 38)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (11, 38)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (16, 38)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (17, 38)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (10, 39)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (1, 40)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (5, 40)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (5, 41)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (14, 42)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (12, 43)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (14, 43)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (5, 44)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (9, 45)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (12, 45)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (16, 45)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (17, 45)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (14, 46)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (7, 47)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (15, 47)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (3, 48)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (6, 48)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (8, 48)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (9, 48)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (19, 48)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (11, 49)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (17, 49)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (19, 49)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (14, 50)
INSERT [dbo].[AssignmentQuestion] ([AssignmentId], [QuestionId]) VALUES (20, 50)
GO
SET IDENTITY_INSERT [dbo].[Assignments] ON 

INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (1, 3, N'Cynomys ludovicianus', N'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.
Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', CAST(N'2050-12-20T22:47:27.0000000' AS DateTime2), CAST(N'2081-02-18T16:55:34.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (2, 6, N'Herpestes javanicus', N'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.
Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', CAST(N'2048-06-16T22:26:30.0000000' AS DateTime2), CAST(N'2057-03-30T00:04:36.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (3, 3, N'Colobus guerza', N'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', CAST(N'2090-01-15T21:01:06.0000000' AS DateTime2), CAST(N'2072-10-25T15:00:59.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (4, 2, N'Pycnonotus nigricans', N'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.
Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', CAST(N'2063-01-29T20:29:13.0000000' AS DateTime2), CAST(N'2071-12-13T07:16:18.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (5, 5, N'Haliaeetus leucoryphus', N'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', CAST(N'2025-07-01T08:45:39.0000000' AS DateTime2), CAST(N'2082-09-18T20:46:18.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (6, 10, N'Microcebus murinus', N'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', CAST(N'2037-08-28T22:59:27.0000000' AS DateTime2), CAST(N'2070-09-17T14:53:09.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (7, 3, N'Speotyte cuniculata', N'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.
Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', CAST(N'2061-01-06T15:47:35.0000000' AS DateTime2), CAST(N'2090-11-08T07:09:40.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (8, 9, N'Tachybaptus ruficollis', N'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', CAST(N'2013-03-22T17:25:52.0000000' AS DateTime2), CAST(N'2063-10-15T02:10:14.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (9, 1, N'Meles meles', N'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.
Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', CAST(N'2083-09-15T19:51:11.0000000' AS DateTime2), CAST(N'2047-05-05T07:49:59.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (10, 6, N'Recurvirostra avosetta', N'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', CAST(N'2050-04-02T21:13:00.0000000' AS DateTime2), CAST(N'2017-07-08T18:24:32.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (11, 10, N'Orcinus orca', N'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.
Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', CAST(N'2054-10-25T00:55:40.0000000' AS DateTime2), CAST(N'2031-02-05T23:10:50.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (12, 6, N'Felis caracal', N'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.
Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', CAST(N'2022-04-13T02:04:59.0000000' AS DateTime2), CAST(N'2039-09-16T19:16:11.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (13, 3, N'Lepilemur rufescens', N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', CAST(N'2062-09-27T08:11:55.0000000' AS DateTime2), CAST(N'2048-09-24T12:47:32.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (14, 6, N'Haliaetus vocifer', N'Phasellus in felis. Donec semper sapien a libero. Nam dui.
Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', CAST(N'2000-04-11T18:45:57.0000000' AS DateTime2), CAST(N'2073-04-11T18:04:00.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (15, 9, N'Centrocercus urophasianus', N'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', CAST(N'2082-05-21T05:58:22.0000000' AS DateTime2), CAST(N'2092-01-23T21:48:14.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (16, 2, N'Mazama gouazoubira', N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', CAST(N'2051-10-20T08:27:07.0000000' AS DateTime2), CAST(N'2089-03-20T22:25:06.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (17, 7, N'Cordylus giganteus', N'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.
Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobotis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', CAST(N'2053-02-05T08:26:36.0000000' AS DateTime2), CAST(N'2004-07-19T05:50:21.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (18, 4, N'Gopherus agassizii', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.
Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', CAST(N'2082-02-10T17:37:26.0000000' AS DateTime2), CAST(N'2011-09-02T07:26:00.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (19, 9, N'Columba livia', N'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.
Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', CAST(N'2017-07-13T03:06:46.0000000' AS DateTime2), CAST(N'2085-01-20T03:04:59.0000000' AS DateTime2))
INSERT [dbo].[Assignments] ([AssignmentId], [CourseId], [AssignmentTitle], [Description], [DueDate], [CreatedAt]) VALUES (20, 9, N'Cynomys ludovicianus', N'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.
Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', CAST(N'2006-03-25T23:22:55.0000000' AS DateTime2), CAST(N'2087-08-27T13:13:10.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Assignments] OFF
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (1, N'at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse', N'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2012-07-17T13:57:02.0000000' AS DateTime2), N'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg?t=st=1721660856~exp=1721664456~hmac=393fa085b6ad6005805c0b871115cf9d096ef2929075c2d5358b1da051733b5c&w=1380')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (2, N'sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus', N'Mauris sit amet eros.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2013-01-05T13:21:34.0000000' AS DateTime2), N'https://img.freepik.com/free-photo/nature-tranquil-beauty-reflected-calm-water-generative-ai_188544-12798.jpg?t=st=1721661964~exp=1721665564~hmac=e84e4ee5859cb9ea228a39734d70710e99aa77a566d35fe4a6f875628d817dae&w=1380')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (3, N'in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer', N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2022-09-24T02:53:40.0000000' AS DateTime2), N'https://img.freepik.com/free-photo/nature-beauty-reflected-tranquil-mountain-lake-generative-ai_188544-12625.jpg?t=st=1721662349~exp=1721665949~hmac=db9898d9dac532a383f62173536fa133586e6d386bb3ce20bfbb1e575dcc6543&w=1380')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (4, N'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', N'Donec ut dolor.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2000-09-14T13:04:26.0000000' AS DateTime2), N'https://img.freepik.com/free-photo/nature-landscape-with-black-sand-beach_23-2151380344.jpg?t=st=1721661614~exp=1721665214~hmac=af475b71008b26f4ad2c41c03d0b5d5fa73dbf3718be93058994db5ffa3ef497&w=1380')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (5, N'mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus', N'Nulla tempus.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2004-10-17T18:53:14.0000000' AS DateTime2), N'https://img.freepik.com/free-photo/majestic-mountain-range-reflects-tranquil-sunset-wave-generated-by-ai_188544-22743.jpg?t=st=1721662390~exp=1721665990~hmac=c30a4b59cc28f8a6f8bc0549f3000b8532696f13d71553fb3dc7e6f818115f23&w=1380')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (6, N'interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis', N'Morbi ut odio.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2009-09-16T12:27:11.0000000' AS DateTime2), N'https://img.freepik.com/free-photo/nature-tranquil-beauty-reflected-calm-water-generative-ai_188544-12798.jpg?t=st=1721661964~exp=1721665564~hmac=e84e4ee5859cb9ea228a39734d70710e99aa77a566d35fe4a6f875628d817dae&w=1380')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (7, N'vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et', N'Nulla mollis molestie lorem.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2006-07-25T16:28:52.0000000' AS DateTime2), N'https://img.freepik.com/free-photo/nature-beauty-reflected-tranquil-mountain-lake-generative-ai_188544-12625.jpg?t=st=1721662349~exp=1721665949~hmac=db9898d9dac532a383f62173536fa133586e6d386bb3ce20bfbb1e575dcc6543&w=1380')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (8, N'platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at', N'Nullam sit amet turpis elementum ligula vehicula consequat.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2003-08-12T00:19:25.0000000' AS DateTime2), N'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg?t=st=1721660856~exp=1721664456~hmac=393fa085b6ad6005805c0b871115cf9d096ef2929075c2d5358b1da051733b5c&w=1380')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (9, N'eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien', N'Aenean sit amet justo.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2018-01-09T22:47:37.0000000' AS DateTime2), N'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg?t=st=1721660856~exp=1721664456~hmac=393fa085b6ad6005805c0b871115cf9d096ef2929075c2d5358b1da051733b5c&w=1380')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (10, N'praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras', N'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2017-06-05T20:42:02.0000000' AS DateTime2), N'https://img.freepik.com/free-photo/nature-tranquil-beauty-reflected-calm-water-generative-ai_188544-12798.jpg?t=st=1721661964~exp=1721665564~hmac=e84e4ee5859cb9ea228a39734d70710e99aa77a566d35fe4a6f875628d817dae&w=1380')
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Lessons] ON 

INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (1, 10, N'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', CAST(N'2021-12-22T06:02:21.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/jt04eg9T2sE" title="Basics of Japanese Pitch Accent" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (2, 2, N'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', CAST(N'2024-12-24T06:12:43.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/5s04gJYRPM4" title="How to Use いいですよ" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (3, 4, N'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit', N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', CAST(N'2023-11-23T03:05:14.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/t1iTJK31UYw" title="First-time Greeting in Japanese for Beginners" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (4, 5, N'ornare consequat lectus in est risus auctor sed tristique in tempus sit', N'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', CAST(N'2023-04-28T05:58:55.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/zTgEatkcjHQ" title="What is 遠慮（えんりょ）?" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (5, 3, N'cras pellentesque volutpat dui maecenas tristique est et tempus semper est', N'In congue. Etiam justo. Etiam pretium iaculis justo.', CAST(N'2023-06-30T13:29:43.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (6, 7, N'sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula', N'In congue. Etiam justo. Etiam pretium iaculis justo.', CAST(N'2024-06-20T11:29:43.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Advanced')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (7, 4, N'quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', N'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', CAST(N'2023-09-27T20:13:39.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (8, 10, N'in porttitor pede justo eu massa donec dapibus duis at', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', CAST(N'2024-08-04T19:07:16.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (9, 8, N'nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', CAST(N'2023-05-28T16:49:52.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (10, 2, N'nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in', N'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', CAST(N'2023-05-20T14:24:22.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (11, 2, N'libero nullam sit amet turpis elementum ligula vehicula consequat morbi a', N'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', CAST(N'2024-07-09T02:07:35.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (12, 1, N'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', CAST(N'2024-07-22T05:25:33.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (13, 2, N'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', CAST(N'2024-10-21T12:45:21.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (14, 7, N'elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', N'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', CAST(N'2023-02-03T04:01:48.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (15, 2, N'urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius', N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', CAST(N'2024-02-23T16:15:59.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (16, 8, N'congue eget semper rutrum nulla nunc purus phasellus in felis donec semper', N'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', CAST(N'2023-06-22T03:23:16.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (17, 3, N'nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', CAST(N'2024-07-17T16:27:28.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Advanced')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (18, 9, N'ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices', N'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', CAST(N'2023-01-27T03:31:27.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (19, 6, N'tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu', N'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', CAST(N'2023-11-01T19:08:59.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (20, 6, N'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque', N'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', CAST(N'2023-09-23T00:02:59.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (21, 2, N'luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh', N'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', CAST(N'2023-10-04T22:10:55.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/bPP3-GyFpYs" title="Beginner Guide to Konbini" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Advanced')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (22, 9, N'quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', CAST(N'2023-11-23T08:29:21.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/jt04eg9T2sE" title="Basics of Japanese Pitch Accent" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (23, 3, N'vel nisl duis ac nibh fusce lacus purus aliquet at', N'Phasellus in felis. Donec semper sapien a libero. Nam dui.', CAST(N'2024-08-21T00:33:33.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/jt04eg9T2sE" title="Basics of Japanese Pitch Accent" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (24, 9, N'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', CAST(N'2023-03-05T14:55:12.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/jt04eg9T2sE" title="Basics of Japanese Pitch Accent" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (25, 1, N'et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', CAST(N'2024-10-23T07:50:50.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/jt04eg9T2sE" title="Basics of Japanese Pitch Accent" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (26, 9, N'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque', N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', CAST(N'2024-01-12T00:30:52.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/jt04eg9T2sE" title="Basics of Japanese Pitch Accent" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (27, 2, N'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', CAST(N'2024-05-24T05:47:13.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/jt04eg9T2sE" title="Basics of Japanese Pitch Accent" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (28, 1, N'mi integer ac neque duis bibendum morbi non quam nec dui luctus', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', CAST(N'2023-09-28T10:49:17.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/jt04eg9T2sE" title="Basics of Japanese Pitch Accent" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Advanced')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (29, 10, N'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', N'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', CAST(N'2024-09-26T21:13:43.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/jt04eg9T2sE" title="Basics of Japanese Pitch Accent" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (30, 5, N'nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', CAST(N'2023-03-22T20:57:44.0000000' AS DateTime2), N'<iframe width="960" height="540" src="https://www.youtube.com/embed/jt04eg9T2sE" title="Basics of Japanese Pitch Accent" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>', N'Beginner')
SET IDENTITY_INSERT [dbo].[Lessons] OFF
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (1, N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', N'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', N'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', N'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (2, N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', N'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', N'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', N'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', N'In congue. Etiam justo. Etiam pretium iaculis justo.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (3, N'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', N'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', N'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', N'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (4, N'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', N'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (5, N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', N'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', N'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (6, N'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', N'Fusce consequat. Nulla nisl. Nunc nisl.', N'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (7, N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', N'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', N'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', N'Fusce consequat. Nulla nisl. Nunc nisl.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (8, N'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', N'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (9, N'In congue. Etiam justo. Etiam pretium iaculis justo.', N'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (10, N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', N'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', N'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', N'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (11, N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (12, N'Fusce consequat. Nulla nisl. Nunc nisl.', N'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', N'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', N'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (13, N'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (14, N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', N'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (15, N'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', N'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (16, N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', N'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (17, N'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', N'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (18, N'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', N'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', N'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', N'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (19, N'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', N'In congue. Etiam justo. Etiam pretium iaculis justo.', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (20, N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (21, N'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', N'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', N'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (22, N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', N'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', N'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (23, N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', N'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (24, N'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'Fusce consequat. Nulla nisl. Nunc nisl.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (25, N'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', N'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', N'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', N'Fusce consequat. Nulla nisl. Nunc nisl.', N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (26, N'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', N'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', N'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (27, N'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', N'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', N'Phasellus in felis. Donec semper sapien a libero. Nam dui.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (28, N'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', N'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', N'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', N'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (29, N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', N'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (30, N'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', N'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', N'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (31, N'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', N'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', N'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', N'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', N'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (32, N'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'Phasellus in felis. Donec semper sapien a libero. Nam dui.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (33, N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (34, N'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', N'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', N'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', N'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (35, N'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (36, N'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', N'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (37, N'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', N'In congue. Etiam justo. Etiam pretium iaculis justo.', N'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (38, N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', N'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', N'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (39, N'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', N'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', N'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (40, N'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', N'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', N'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', N'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (41, N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', N'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', N'In congue. Etiam justo. Etiam pretium iaculis justo.', N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (42, N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', N'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', N'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (43, N'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', N'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', N'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (44, N'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', N'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', N'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (45, N'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', N'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (46, N'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', N'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', N'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', N'In congue. Etiam justo. Etiam pretium iaculis justo.', N'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (47, N'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', N'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', N'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (48, N'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', N'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (49, N'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', N'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'In congue. Etiam justo. Etiam pretium iaculis justo.', N'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', N'1')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (50, N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', N'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', N'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'1')
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
INSERT [dbo].[Teachers] VALUES ('a4474ccd-b23f-43e8-941a-832372777d27', 'Good', 'Good');
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AssignmentQuestion_QuestionId]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_AssignmentQuestion_QuestionId] ON [dbo].[AssignmentQuestion]
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Assignments_CourseId]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_Assignments_CourseId] ON [dbo].[Assignments]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Courses_InstructorId]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_Courses_InstructorId] ON [dbo].[Courses]
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Enrollments_CourseId]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_Enrollments_CourseId] ON [dbo].[Enrollments]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Enrollments_UserId]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_Enrollments_UserId] ON [dbo].[Enrollments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Lessons_CourseId]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_Lessons_CourseId] ON [dbo].[Lessons]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Parents_StudentId]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_Parents_StudentId] ON [dbo].[Parents]
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_StudentResponses_QuestionId]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_StudentResponses_QuestionId] ON [dbo].[StudentResponses]
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_StudentResponses_SubmissionId]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_StudentResponses_SubmissionId] ON [dbo].[StudentResponses]
(
	[SubmissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Submissions_AssignmentId]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_Submissions_AssignmentId] ON [dbo].[Submissions]
(
	[AssignmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Submissions_UserId]    Script Date: 7/22/2024 7:35:41 PM ******/
CREATE NONCLUSTERED INDEX [IX_Submissions_UserId] ON [dbo].[Submissions]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Lessons] ADD  DEFAULT (N'') FOR [Level]
GO
ALTER TABLE [dbo].[Questions] ADD  DEFAULT (N'') FOR [Correctans]
GO
ALTER TABLE [dbo].[Admins]  WITH CHECK ADD  CONSTRAINT [FK_Admins_AspNetUsers_AdminId] FOREIGN KEY([AdminId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Admins] CHECK CONSTRAINT [FK_Admins_AspNetUsers_AdminId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AssignmentQuestion]  WITH CHECK ADD  CONSTRAINT [FK_AssignmentQuestion_Assignments_AssignmentId] FOREIGN KEY([AssignmentId])
REFERENCES [dbo].[Assignments] ([AssignmentId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AssignmentQuestion] CHECK CONSTRAINT [FK_AssignmentQuestion_Assignments_AssignmentId]
GO
ALTER TABLE [dbo].[AssignmentQuestion]  WITH CHECK ADD  CONSTRAINT [FK_AssignmentQuestion_Questions_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([Qid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AssignmentQuestion] CHECK CONSTRAINT [FK_AssignmentQuestion_Questions_QuestionId]
GO
ALTER TABLE [dbo].[Assignments]  WITH CHECK ADD  CONSTRAINT [FK_Assignments_Courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Assignments] CHECK CONSTRAINT [FK_Assignments_Courses_CourseId]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_AspNetUsers_InstructorId] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_AspNetUsers_InstructorId]
GO
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Enrollments] CHECK CONSTRAINT [FK_Enrollments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_Courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
ALTER TABLE [dbo].[Enrollments] CHECK CONSTRAINT [FK_Enrollments_Courses_CourseId]
GO
ALTER TABLE [dbo].[Lessons]  WITH CHECK ADD  CONSTRAINT [FK_Lessons_Courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Lessons] CHECK CONSTRAINT [FK_Lessons_Courses_CourseId]
GO
ALTER TABLE [dbo].[Parents]  WITH CHECK ADD  CONSTRAINT [FK_Parents_AspNetUsers_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Parents] CHECK CONSTRAINT [FK_Parents_AspNetUsers_ParentId]
GO
ALTER TABLE [dbo].[Parents]  WITH CHECK ADD  CONSTRAINT [FK_Parents_AspNetUsers_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Parents] CHECK CONSTRAINT [FK_Parents_AspNetUsers_StudentId]
GO
ALTER TABLE [dbo].[StudentResponses]  WITH CHECK ADD  CONSTRAINT [FK_StudentResponses_Questions_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([Qid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentResponses] CHECK CONSTRAINT [FK_StudentResponses_Questions_QuestionId]
GO
ALTER TABLE [dbo].[StudentResponses]  WITH CHECK ADD  CONSTRAINT [FK_StudentResponses_Submissions_SubmissionId] FOREIGN KEY([SubmissionId])
REFERENCES [dbo].[Submissions] ([SubmissionId])
GO
ALTER TABLE [dbo].[StudentResponses] CHECK CONSTRAINT [FK_StudentResponses_Submissions_SubmissionId]
GO
ALTER TABLE [dbo].[Submissions]  WITH CHECK ADD  CONSTRAINT [FK_Submissions_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Submissions] CHECK CONSTRAINT [FK_Submissions_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Submissions]  WITH CHECK ADD  CONSTRAINT [FK_Submissions_Assignments_AssignmentId] FOREIGN KEY([AssignmentId])
REFERENCES [dbo].[Assignments] ([AssignmentId])
GO
ALTER TABLE [dbo].[Submissions] CHECK CONSTRAINT [FK_Submissions_Assignments_AssignmentId]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [FK_Teachers_AspNetUsers_TeacherId] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Teachers_AspNetUsers_TeacherId]
GO
USE [master]
GO
ALTER DATABASE [CourseManagement] SET  READ_WRITE 
GO
