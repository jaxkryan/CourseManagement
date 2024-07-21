USE [master]
GO
Drop database [CourseManagement]
GO
/****** Object:  Database [CourseManagement]    Script Date: 7/21/2024 1:11:44 PM ******/
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/21/2024 1:11:44 PM ******/
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
/****** Object:  Table [dbo].[Admins]    Script Date: 7/21/2024 1:11:44 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/21/2024 1:11:44 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/21/2024 1:11:44 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/21/2024 1:11:44 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/21/2024 1:11:44 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/21/2024 1:11:44 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/21/2024 1:11:44 PM ******/
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/21/2024 1:11:44 PM ******/
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
/****** Object:  Table [dbo].[AssignmentQuestion]    Script Date: 7/21/2024 1:11:44 PM ******/
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
/****** Object:  Table [dbo].[Assignments]    Script Date: 7/21/2024 1:11:44 PM ******/
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
/****** Object:  Table [dbo].[Courses]    Script Date: 7/21/2024 1:11:44 PM ******/
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
/****** Object:  Table [dbo].[Enrollments]    Script Date: 7/21/2024 1:11:44 PM ******/
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
/****** Object:  Table [dbo].[Lessons]    Script Date: 7/21/2024 1:11:44 PM ******/
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
/****** Object:  Table [dbo].[Parents]    Script Date: 7/21/2024 1:11:44 PM ******/
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
/****** Object:  Table [dbo].[Questions]    Script Date: 7/21/2024 1:11:44 PM ******/
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
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[Qid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Submissions]    Script Date: 7/21/2024 1:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Submissions](
	[SubmissionId] [int] IDENTITY(1,1) NOT NULL,
	[AssignmentId] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[SubmittedAt] [datetime2](7) NOT NULL,
	[Grade] [float] NULL,
 CONSTRAINT [PK_Submissions] PRIMARY KEY CLUSTERED 
(
	[SubmissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 7/21/2024 1:11:44 PM ******/
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
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'26813976-1ce4-402d-bd96-4825f9e11630', N'guest', N'guest', N'0f1049b6-86c4-4825-bc9c-e7f87552b117')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'568eede8-f7c2-41b6-8530-4ac196784e49', N'parent', N'parent', N'b6d906c9-d812-4ce6-9ea7-86690feea8cf')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5a6b687e-3c96-41a8-aeb5-c65bb7b2617d', N'student', N'student', N'b960b395-fa58-44b1-9438-8f2fb05dbe21')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b6b1d4a3-8250-4632-9dfe-03d6ca8bfccf', N'teacher', N'teacher', N'bdc18a15-5ca8-4d24-b7d4-11dad3f390b8')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd34a8106-e817-4a7e-b299-b9ffcfa52150', N'admin', N'admin', N'b01e5e77-1dec-46e4-81d3-b663b8bde43e')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0aae3efc-f48b-4510-8e65-b44117a1f335', N'568eede8-f7c2-41b6-8530-4ac196784e49')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'19782963-c520-43a6-94f8-b755c095f940', N'5a6b687e-3c96-41a8-aeb5-c65bb7b2617d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cf43bb08-b822-4504-9ac3-7aa90627de4a', N'5a6b687e-3c96-41a8-aeb5-c65bb7b2617d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a4474ccd-b23f-43e8-941a-832372777d27', N'b6b1d4a3-8250-4632-9dfe-03d6ca8bfccf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2df23b4a-cd5b-48ad-90d6-72f6d2f81f20', N'd34a8106-e817-4a7e-b299-b9ffcfa52150')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [Address], [CreatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Image]) VALUES (N'0aae3efc-f48b-4510-8e65-b44117a1f335', N'Parent', N'Tu', CAST(N'2024-07-13T00:00:00.0000000' AS DateTime2), N'kbiet', CAST(N'2024-07-02T23:17:50.2780651' AS DateTime2), N'qwerty@gmail.com', N'QWERTY@GMAIL.COM', N'qwerty@gmail.com', N'QWERTY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJy4KUjejGe2ftYiQvIVJO/MQ3+JxZsIsBeE6LRflmdYAsfH8drK6KbpXUVTbAHJMg==', N'GF3K5DTFM24SOFWD7FLAXL5GOCV7YA3U', N'c0d23f38-a625-4ecd-bb77-f7d3af7b8d89', N'123452412', 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [Address], [CreatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Image]) VALUES (N'19782963-c520-43a6-94f8-b755c095f940', N'Student', N'Huy', CAST(N'2024-07-16T00:00:00.0000000' AS DateTime2), N'Chua Hang District', CAST(N'2024-07-02T16:56:57.0648898' AS DateTime2), N'bac@gmail.com', N'BAC@GMAIL.COM', N'bac@gmail.com', N'BAC@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOZxiEaRH8raYBCovnMb9a7OklOS0FOeKMZICzGgNyBs+oxgnnYqDwnIMOICW8bihw==', N'CGLBTYMP3A374H3ZTO6LLA7SDFAJZGZH', N'fe5654aa-50af-4f8c-8470-6518ba489561', N'0942981631', 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [Address], [CreatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Image]) VALUES (N'2df23b4a-cd5b-48ad-90d6-72f6d2f81f20', N'Admin', N'Huy', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'Chua Hang District', CAST(N'2024-07-02T01:30:30.6190332' AS DateTime2), N'huyg.a22052003@gmail.com', N'HUYG.A22052003@GMAIL.COM', N'huyg.a22052003@gmail.com', N'HUYG.A22052003@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEHrFxHp/K8NU7EZq7ycJFIIsqp0w0JwzzfvZiW1afh44WaAgxPI7e7e+TQV2M7C/iw==', N'CNIG53QNWX4HB4MGRUYNMY6SW72OT6N5', N'f9c499ce-f472-4988-b9dc-9474c9826a99', N'0942981631', 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [Address], [CreatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Image]) VALUES (N'a4474ccd-b23f-43e8-941a-832372777d27', N'Teacher', N'Duc', CAST(N'2024-07-11T00:00:00.0000000' AS DateTime2), N'tn', CAST(N'2024-07-02T23:16:38.9744327' AS DateTime2), N'abcdef@gmail.com', N'ABCDEF@GMAIL.COM', N'abcdef@gmail.com', N'ABCDEF@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFlQeSL7GK/9kIgVCza2upmIPQBDRU3zDM9L8Tf+nFCZH3F4e9uB3UqLcCnqL76jYg==', N'SVECZPKN5KHV4IDOUQRHYBJ2KA72WZ4K', N'c24f41d9-ad37-4e29-9174-3661cdccbe33', N'123456789', 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [Address], [CreatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Image]) VALUES (N'cf43bb08-b822-4504-9ac3-7aa90627de4a', N'Student', N'hai', CAST(N'2024-07-03T00:00:00.0000000' AS DateTime2), N'lmao lmao lmao', CAST(N'2024-07-21T00:18:59.4593400' AS DateTime2), N'huy6ach2@gmail.com', N'HUY6ACH2@GMAIL.COM', N'huy6ach2@gmail.com', N'HUY6ACH2@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEN5OIpyyRObXfLGoYRU3krhh4fpBJ/z2+bq9STKvZGS3G17LH6kgYU+Ho+fzSms1+Q==', N'DOJ7XDRS3ZXZI4TSR2ZMWVGT6YF4E2N7', N'632edd50-2827-4543-ad0b-3900b7096bdc', N'01234564489', 0, 0, NULL, 1, 0, NULL)
GO
insert into Courses (CourseName, Description, InstructorId, CreatedAt, Image) values ('at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', 'a4474ccd-b23f-43e8-941a-832372777d27', '7/17/2012 13:57:02', 'https://photobucket.com/suspendisse/ornare.jsp?ullamcorper=sit&augue=amet&a=consectetuer&suscipit=adipiscing&nulla=elit&elit=proin&ac=interdum&nulla=mauris&sed=non&vel=ligula&enim=pellentesque&sit=ultrices&amet=phasellus&nunc=id&viverra=sapien&dapibus=in&nulla=sapien&suscipit=iaculis&ligula=congue&in=vivamus&lacus=metus&curabitur=arcu&at=adipiscing&ipsum=molestie&ac=hendrerit&tellus=at&semper=vulputate&interdum=vitae&mauris=nisl&ullamcorper=aenean&purus=lectus&sit=pellentesque&amet=eget&nulla=nunc&quisque=donec&arcu=quis&libero=orci');
insert into Courses (CourseName, Description, InstructorId, CreatedAt, Image) values ('sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus', 'Mauris sit amet eros.', 'a4474ccd-b23f-43e8-941a-832372777d27', '1/5/2013 13:21:34', 'http://godaddy.com/ornare/imperdiet/sapien/urna.json?vitae=luctus&nisi=et');
insert into Courses (CourseName, Description, InstructorId, CreatedAt, Image) values ('in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'a4474ccd-b23f-43e8-941a-832372777d27', '9/24/2022 02:53:40', 'http://sciencedaily.com/quam/suspendisse/potenti/nullam/porttitor/lacus/at.jsp?curabitur=nec&gravida=euismod&nisi=scelerisque&at=quam&nibh=turpis&in=adipiscing&hac=lorem&habitasse=vitae&platea=mattis&dictumst=nibh&aliquam=ligula&augue=nec&quam=sem&sollicitudin=duis&vitae=aliquam&consectetuer=convallis&eget=nunc&rutrum=proin&at=at&lorem=turpis&integer=a&tincidunt=pede&ante=posuere&vel=nonummy&ipsum=integer&praesent=non&blandit=velit&lacinia=donec&erat=diam&vestibulum=neque&sed=vestibulum&magna=eget&at=vulputate&nunc=ut&commodo=ultrices&placerat=vel&praesent=augue&blandit=vestibulum&nam=ante&nulla=ipsum&integer=primis&pede=in&justo=faucibus&lacinia=orci&eget=luctus&tincidunt=et&eget=ultrices&tempus=posuere&vel=cubilia&pede=curae&morbi=donec&porttitor=pharetra&lorem=magna&id=vestibulum&ligula=aliquet&suspendisse=ultrices&ornare=erat&consequat=tortor&lectus=sollicitudin&in=mi&est=sit&risus=amet&auctor=lobortis&sed=sapien&tristique=sapien&in=non&tempus=mi&sit=integer&amet=ac');
insert into Courses (CourseName, Description, InstructorId, CreatedAt, Image) values ('sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', 'Donec ut dolor.', 'a4474ccd-b23f-43e8-941a-832372777d27', '9/14/2000 13:04:26', 'http://usatoday.com/condimentum/neque/sapien.jsp?commodo=ligula&vulputate=suspendisse&justo=ornare&in=consequat&blandit=lectus&ultrices=in&enim=est&lorem=risus&ipsum=auctor&dolor=sed&sit=tristique&amet=in&consectetuer=tempus&adipiscing=sit&elit=amet&proin=sem&interdum=fusce&mauris=consequat&non=nulla&ligula=nisl&pellentesque=nunc&ultrices=nisl&phasellus=duis&id=bibendum&sapien=felis&in=sed&sapien=interdum&iaculis=venenatis&congue=turpis&vivamus=enim&metus=blandit&arcu=mi&adipiscing=in');
insert into Courses (CourseName, Description, InstructorId, CreatedAt, Image) values ('mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus', 'Nulla tempus.', 'a4474ccd-b23f-43e8-941a-832372777d27', '10/17/2004 18:53:14', 'https://guardian.co.uk/nonummy/maecenas/tincidunt/lacus/at/velit.png?convallis=primis&morbi=in&odio=faucibus&odio=orci&elementum=luctus&eu=et&interdum=ultrices&eu=posuere&tincidunt=cubilia&in=curae&leo=donec&maecenas=pharetra&pulvinar=magna&lobortis=vestibulum&est=aliquet&phasellus=ultrices&sit=erat&amet=tortor&erat=sollicitudin&nulla=mi&tempus=sit&vivamus=amet&in=lobortis&felis=sapien&eu=sapien&sapien=non&cursus=mi&vestibulum=integer&proin=ac&eu=neque&mi=duis&nulla=bibendum&ac=morbi&enim=non&in=quam&tempor=nec&turpis=dui&nec=luctus&euismod=rutrum&scelerisque=nulla&quam=tellus&turpis=in&adipiscing=sagittis&lorem=dui&vitae=vel&mattis=nisl&nibh=duis&ligula=ac&nec=nibh&sem=fusce&duis=lacus&aliquam=purus&convallis=aliquet&nunc=at&proin=feugiat&at=non&turpis=pretium&a=quis&pede=lectus&posuere=suspendisse&nonummy=potenti&integer=in&non=eleifend&velit=quam&donec=a&diam=odio&neque=in&vestibulum=hac&eget=habitasse&vulputate=platea&ut=dictumst&ultrices=maecenas&vel=ut&augue=massa&vestibulum=quis&ante=augue&ipsum=luctus&primis=tincidunt&in=nulla&faucibus=mollis&orci=molestie&luctus=lorem&et=quisque&ultrices=ut&posuere=erat&cubilia=curabitur&curae=gravida&donec=nisi&pharetra=at&magna=nibh&vestibulum=in&aliquet=hac&ultrices=habitasse&erat=platea');
insert into Courses (CourseName, Description, InstructorId, CreatedAt, Image) values ('interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis', 'Morbi ut odio.', 'a4474ccd-b23f-43e8-941a-832372777d27', '9/16/2009 12:27:11', 'http://pcworld.com/integer/aliquet/massa/id.aspx?consequat=varius&lectus=ut&in=blandit&est=non&risus=interdum&auctor=in&sed=ante&tristique=vestibulum&in=ante&tempus=ipsum&sit=primis&amet=in&sem=faucibus&fusce=orci&consequat=luctus&nulla=et&nisl=ultrices&nunc=posuere&nisl=cubilia&duis=curae&bibendum=duis&felis=faucibus&sed=accumsan&interdum=odio&venenatis=curabitur&turpis=convallis&enim=duis&blandit=consequat&mi=dui&in=nec&porttitor=nisi&pede=volutpat&justo=eleifend&eu=donec&massa=ut&donec=dolor&dapibus=morbi&duis=vel&at=lectus&velit=in&eu=quam&est=fringilla&congue=rhoncus&elementum=mauris&in=enim&hac=leo&habitasse=rhoncus&platea=sed');
insert into Courses (CourseName, Description, InstructorId, CreatedAt, Image) values ('vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et', 'Nulla mollis molestie lorem.', 'a4474ccd-b23f-43e8-941a-832372777d27', '7/25/2006 16:28:52', 'http://photobucket.com/mollis/molestie/lorem/quisque/ut/erat.jsp?in=gravida&faucibus=nisi&orci=at&luctus=nibh&et=in&ultrices=hac&posuere=habitasse&cubilia=platea&curae=dictumst&donec=aliquam&pharetra=augue&magna=quam&vestibulum=sollicitudin&aliquet=vitae&ultrices=consectetuer');
insert into Courses (CourseName, Description, InstructorId, CreatedAt, Image) values ('platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at', 'Nullam sit amet turpis elementum ligula vehicula consequat.', 'a4474ccd-b23f-43e8-941a-832372777d27', '8/12/2003 00:19:25', 'https://wisc.edu/libero/convallis/eget.js?in=turpis&faucibus=nec&orci=euismod&luctus=scelerisque&et=quam&ultrices=turpis&posuere=adipiscing&cubilia=lorem&curae=vitae&donec=mattis&pharetra=nibh&magna=ligula&vestibulum=nec&aliquet=sem&ultrices=duis&erat=aliquam&tortor=convallis&sollicitudin=nunc&mi=proin&sit=at&amet=turpis&lobortis=a&sapien=pede&sapien=posuere&non=nonummy&mi=integer&integer=non&ac=velit&neque=donec&duis=diam&bibendum=neque&morbi=vestibulum&non=eget&quam=vulputate&nec=ut&dui=ultrices&luctus=vel&rutrum=augue&nulla=vestibulum');
insert into Courses (CourseName, Description, InstructorId, CreatedAt, Image) values ('eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien', 'Aenean sit amet justo.', 'a4474ccd-b23f-43e8-941a-832372777d27', '1/9/2018 22:47:37', 'http://nba.com/porttitor.html?turpis=morbi&a=vestibulum&pede=velit&posuere=id&nonummy=pretium&integer=iaculis&non=diam&velit=erat&donec=fermentum&diam=justo&neque=nec&vestibulum=condimentum&eget=neque&vulputate=sapien&ut=placerat&ultrices=ante&vel=nulla&augue=justo&vestibulum=aliquam&ante=quis&ipsum=turpis&primis=eget&in=elit&faucibus=sodales&orci=scelerisque&luctus=mauris&et=sit&ultrices=amet&posuere=eros&cubilia=suspendisse&curae=accumsan&donec=tortor&pharetra=quis&magna=turpis&vestibulum=sed&aliquet=ante&ultrices=vivamus&erat=tortor&tortor=duis&sollicitudin=mattis&mi=egestas&sit=metus&amet=aenean&lobortis=fermentum&sapien=donec&sapien=ut&non=mauris&mi=eget&integer=massa&ac=tempor&neque=convallis&duis=nulla&bibendum=neque&morbi=libero&non=convallis&quam=eget&nec=eleifend&dui=luctus&luctus=ultricies&rutrum=eu&nulla=nibh&tellus=quisque&in=id&sagittis=justo&dui=sit&vel=amet&nisl=sapien&duis=dignissim&ac=vestibulum&nibh=vestibulum&fusce=ante&lacus=ipsum&purus=primis&aliquet=in&at=faucibus&feugiat=orci&non=luctus&pretium=et&quis=ultrices&lectus=posuere&suspendisse=cubilia&potenti=curae&in=nulla&eleifend=dapibus&quam=dolor&a=vel&odio=est&in=donec&hac=odio&habitasse=justo&platea=sollicitudin&dictumst=ut&maecenas=suscipit&ut=a');
insert into Courses (CourseName, Description, InstructorId, CreatedAt, Image) values ('praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 'a4474ccd-b23f-43e8-941a-832372777d27', '6/5/2017 20:42:02', 'https://scribd.com/varius/ut/blandit/non.js?morbi=a&sem=suscipit&mauris=nulla&laoreet=elit&ut=ac&rhoncus=nulla&aliquet=sed&pulvinar=vel&sed=enim&nisl=sit&nunc=amet&rhoncus=nunc&dui=viverra&vel=dapibus&sem=nulla');
GO
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (3, 'Cynomys ludovicianus', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.
Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2050-12-20T22:47:27Z', '2081-02-18T16:55:34Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (6, 'Herpestes javanicus', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.
Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2048-06-16T22:26:30Z', '2057-03-30T00:04:36Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (3, 'Colobus guerza', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2090-01-15T21:01:06Z', '2072-10-25T15:00:59Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (2, 'Pycnonotus nigricans', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.
Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2063-01-29T20:29:13Z', '2071-12-13T07:16:18Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (5, 'Haliaeetus leucoryphus', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2025-07-01T08:45:39Z', '2082-09-18T20:46:18Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (10, 'Microcebus murinus', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2037-08-28T22:59:27Z', '2070-09-17T14:53:09Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (3, 'Speotyte cuniculata', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.
Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2061-01-06T15:47:35Z', '2090-11-08T07:09:40Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (9, 'Tachybaptus ruficollis', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2013-03-22T17:25:52Z', '2063-10-15T02:10:14Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (1, 'Meles meles', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.
Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '2083-09-15T19:51:11Z', '2047-05-05T07:49:59Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (6, 'Recurvirostra avosetta', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2050-04-02T21:13:00Z', '2017-07-08T18:24:32Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (10, 'Orcinus orca', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.
Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2054-10-25T00:55:40Z', '2031-02-05T23:10:50Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (6, 'Felis caracal', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.
Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2022-04-13T02:04:59Z', '2039-09-16T19:16:11Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (3, 'Lepilemur rufescens', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2062-09-27T08:11:55Z', '2048-09-24T12:47:32Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (6, 'Haliaetus vocifer', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.
Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2000-04-11T18:45:57Z', '2073-04-11T18:04:00Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (9, 'Centrocercus urophasianus', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2082-05-21T05:58:22Z', '2092-01-23T21:48:14Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (2, 'Mazama gouazoubira', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2051-10-20T08:27:07Z', '2089-03-20T22:25:06Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (7, 'Cordylus giganteus', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.
Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobotis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2053-02-05T08:26:36Z', '2004-07-19T05:50:21Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (4, 'Gopherus agassizii', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.
Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2082-02-10T17:37:26Z', '2011-09-02T07:26:00Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (9, 'Columba livia', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.
Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2017-07-13T03:06:46Z', '2085-01-20T03:04:59Z');
insert into Assignments (CourseId, AssignmentTitle, Description, DueDate, CreatedAt) values (9, 'Cynomys ludovicianus', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.
Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2006-03-25T23:22:55Z', '2087-08-27T13:13:10Z');
GO
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (10, 'nulla integer pede justo lacinia eget tincidunt eget tempus vel', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2023-06-16T02:23:00Z', 'https://google.co.uk/proin.json?augue=tristique&aliquam=in&erat=tempus&volutpat=sit&in=amet&congue=sem&etiam=fusce&justo=consequat&etiam=nulla&pretium=nisl&iaculis=nunc&justo=nisl&in=duis&hac=bibendum&habitasse=felis&platea=sed&dictumst=interdum&etiam=venenatis&faucibus=turpis&cursus=enim&urna=blandit&ut=mi&tellus=in&nulla=porttitor&ut=pede&erat=justo&id=eu&mauris=massa&vulputate=donec&elementum=dapibus&nullam=duis&varius=at&nulla=velit&facilisi=eu&cras=est&non=congue&velit=elementum&nec=in&nisi=hac&vulputate=habitasse&nonummy=platea&maecenas=dictumst&tincidunt=morbi&lacus=vestibulum&at=velit&velit=id&vivamus=pretium&vel=iaculis&nulla=diam&eget=erat&eros=fermentum&elementum=justo&pellentesque=nec&quisque=condimentum&porta=neque&volutpat=sapien', 'Intermediate');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (2, 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2024-12-24T06:12:43Z', 'http://harvard.edu/sapien.jsp?a=donec&libero=vitae&nam=nisi&dui=nam&proin=ultrices&leo=libero&odio=non&porttitor=mattis&id=pulvinar&consequat=nulla&in=pede&consequat=ullamcorper&ut=augue&nulla=a&sed=suscipit&accumsan=nulla&felis=elit&ut=ac&at=nulla&dolor=sed&quis=vel&odio=enim&consequat=sit&varius=amet&integer=nunc&ac=viverra&leo=dapibus&pellentesque=nulla&ultrices=suscipit&mattis=ligula&odio=in&donec=lacus', 'Beginner');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (4, 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2023-11-23T03:05:14Z', 'http://comcast.net/tortor/risus/dapibus/augue.json?placerat=libero&ante=nam&nulla=dui&justo=proin&aliquam=leo&quis=odio&turpis=porttitor&eget=id&elit=consequat&sodales=in&scelerisque=consequat&mauris=ut&sit=nulla&amet=sed&eros=accumsan&suspendisse=felis&accumsan=ut&tortor=at&quis=dolor&turpis=quis&sed=odio&ante=consequat&vivamus=varius&tortor=integer&duis=ac&mattis=leo&egestas=pellentesque&metus=ultrices&aenean=mattis&fermentum=odio&donec=donec&ut=vitae', 'Intermediate');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (5, 'ornare consequat lectus in est risus auctor sed tristique in tempus sit', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2023-04-28T05:58:55Z', 'https://furl.net/semper/rutrum/nulla/nunc/purus.jsp?eget=neque&rutrum=sapien&at=placerat&lorem=ante&integer=nulla&tincidunt=justo&ante=aliquam&vel=quis&ipsum=turpis&praesent=eget&blandit=elit&lacinia=sodales&erat=scelerisque&vestibulum=mauris&sed=sit&magna=amet&at=eros&nunc=suspendisse&commodo=accumsan&placerat=tortor&praesent=quis&blandit=turpis&nam=sed&nulla=ante&integer=vivamus&pede=tortor&justo=duis&lacinia=mattis&eget=egestas&tincidunt=metus&eget=aenean&tempus=fermentum&vel=donec&pede=ut&morbi=mauris&porttitor=eget&lorem=massa&id=tempor&ligula=convallis&suspendisse=nulla&ornare=neque&consequat=libero&lectus=convallis&in=eget&est=eleifend&risus=luctus&auctor=ultricies&sed=eu&tristique=nibh&in=quisque&tempus=id&sit=justo&amet=sit&sem=amet&fusce=sapien&consequat=dignissim&nulla=vestibulum&nisl=vestibulum&nunc=ante&nisl=ipsum&duis=primis&bibendum=in&felis=faucibus&sed=orci&interdum=luctus&venenatis=et&turpis=ultrices&enim=posuere&blandit=cubilia&mi=curae&in=nulla&porttitor=dapibus&pede=dolor&justo=vel&eu=est&massa=donec&donec=odio&dapibus=justo&duis=sollicitudin&at=ut&velit=suscipit&eu=a&est=feugiat&congue=et&elementum=eros&in=vestibulum&hac=ac&habitasse=est&platea=lacinia&dictumst=nisi&morbi=venenatis&vestibulum=tristique&velit=fusce&id=congue', 'Intermediate');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (3, 'cras pellentesque volutpat dui maecenas tristique est et tempus semper est', 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2023-06-30T13:29:43Z', 'http://springer.com/sed/interdum/venenatis/turpis/enim/blandit/mi.aspx?vestibulum=libero&quam=quis&sapien=orci&varius=nullam&ut=molestie&blandit=nibh&non=in&interdum=lectus&in=pellentesque&ante=at&vestibulum=nulla&ante=suspendisse&ipsum=potenti&primis=cras&in=in&faucibus=purus&orci=eu&luctus=magna&et=vulputate&ultrices=luctus&posuere=cum&cubilia=sociis&curae=natoque&duis=penatibus', 'Beginner');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (7, 'sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2023-04-02T09:44:43Z', 'https://sitemeter.com/rutrum/neque/aenean.json?ac=ipsum&tellus=primis&semper=in&interdum=faucibus&mauris=orci&ullamcorper=luctus&purus=et&sit=ultrices', 'Advanced');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (4, 'quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2023-09-27T20:13:39Z', 'http://eepurl.com/amet/sem/fusce/consequat/nulla.xml?platea=ut&dictumst=mauris&etiam=eget&faucibus=massa&cursus=tempor&urna=convallis&ut=nulla&tellus=neque&nulla=libero&ut=convallis&erat=eget&id=eleifend&mauris=luctus&vulputate=ultricies&elementum=eu&nullam=nibh&varius=quisque&nulla=id&facilisi=justo&cras=sit&non=amet&velit=sapien&nec=dignissim&nisi=vestibulum&vulputate=vestibulum&nonummy=ante&maecenas=ipsum&tincidunt=primis&lacus=in&at=faucibus&velit=orci&vivamus=luctus&vel=et&nulla=ultrices&eget=posuere&eros=cubilia&elementum=curae&pellentesque=nulla&quisque=dapibus&porta=dolor&volutpat=vel&erat=est&quisque=donec&erat=odio&eros=justo&viverra=sollicitudin&eget=ut&congue=suscipit', 'Intermediate');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (10, 'in porttitor pede justo eu massa donec dapibus duis at', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2024-08-04T19:07:16Z', 'https://nationalgeographic.com/donec.jpg?rhoncus=amet&mauris=consectetuer&enim=adipiscing&leo=elit&rhoncus=proin&sed=interdum&vestibulum=mauris&sit=non&amet=ligula&cursus=pellentesque&id=ultrices&turpis=phasellus&integer=id&aliquet=sapien&massa=in&id=sapien&lobortis=iaculis&convallis=congue&tortor=vivamus&risus=metus&dapibus=arcu&augue=adipiscing&vel=molestie&accumsan=hendrerit&tellus=at&nisi=vulputate&eu=vitae&orci=nisl&mauris=aenean&lacinia=lectus&sapien=pellentesque&quis=eget', 'Intermediate');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (8, 'nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2023-05-28T16:49:52Z', 'https://odnoklassniki.ru/mattis.xml?primis=pharetra&in=magna&faucibus=ac&orci=consequat&luctus=metus&et=sapien&ultrices=ut&posuere=nunc&cubilia=vestibulum&curae=ante&duis=ipsum&faucibus=primis&accumsan=in&odio=faucibus&curabitur=orci&convallis=luctus&duis=et&consequat=ultrices&dui=posuere&nec=cubilia&nisi=curae&volutpat=mauris&eleifend=viverra&donec=diam&ut=vitae&dolor=quam&morbi=suspendisse&vel=potenti&lectus=nullam&in=porttitor&quam=lacus&fringilla=at&rhoncus=turpis&mauris=donec&enim=posuere&leo=metus&rhoncus=vitae&sed=ipsum&vestibulum=aliquam&sit=non&amet=mauris&cursus=morbi&id=non&turpis=lectus&integer=aliquam&aliquet=sit', 'Beginner');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (2, 'nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2023-05-20T14:24:22Z', 'https://photobucket.com/ut/blandit/non.jsp?augue=posuere&aliquam=cubilia&erat=curae&volutpat=donec&in=pharetra&congue=magna&etiam=vestibulum&justo=aliquet&etiam=ultrices&pretium=erat&iaculis=tortor&justo=sollicitudin&in=mi&hac=sit&habitasse=amet&platea=lobortis&dictumst=sapien&etiam=sapien&faucibus=non&cursus=mi&urna=integer&ut=ac&tellus=neque&nulla=duis&ut=bibendum&erat=morbi&id=non&mauris=quam&vulputate=nec&elementum=dui&nullam=luctus&varius=rutrum&nulla=nulla&facilisi=tellus&cras=in&non=sagittis&velit=dui&nec=vel&nisi=nisl&vulputate=duis&nonummy=ac&maecenas=nibh&tincidunt=fusce&lacus=lacus&at=purus&velit=aliquet&vivamus=at&vel=feugiat&nulla=non&eget=pretium&eros=quis&elementum=lectus&pellentesque=suspendisse&quisque=potenti&porta=in&volutpat=eleifend&erat=quam&quisque=a&erat=odio&eros=in&viverra=hac&eget=habitasse&congue=platea&eget=dictumst&semper=maecenas&rutrum=ut&nulla=massa&nunc=quis&purus=augue&phasellus=luctus&in=tincidunt&felis=nulla&donec=mollis&semper=molestie&sapien=lorem&a=quisque&libero=ut&nam=erat&dui=curabitur', 'Intermediate');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (2, 'libero nullam sit amet turpis elementum ligula vehicula consequat morbi a', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2024-07-09T02:07:35Z', 'http://mac.com/mattis/odio/donec/vitae.jsp?vitae=massa&quam=quis&suspendisse=augue&potenti=luctus&nullam=tincidunt&porttitor=nulla&lacus=mollis&at=molestie&turpis=lorem&donec=quisque&posuere=ut&metus=erat&vitae=curabitur&ipsum=gravida&aliquam=nisi&non=at&mauris=nibh&morbi=in&non=hac&lectus=habitasse&aliquam=platea&sit=dictumst&amet=aliquam&diam=augue&in=quam&magna=sollicitudin&bibendum=vitae&imperdiet=consectetuer&nullam=eget&orci=rutrum&pede=at&venenatis=lorem&non=integer&sodales=tincidunt&sed=ante&tincidunt=vel&eu=ipsum&felis=praesent&fusce=blandit&posuere=lacinia&felis=erat&sed=vestibulum&lacus=sed&morbi=magna&sem=at&mauris=nunc&laoreet=commodo&ut=placerat&rhoncus=praesent&aliquet=blandit&pulvinar=nam&sed=nulla&nisl=integer&nunc=pede&rhoncus=justo&dui=lacinia&vel=eget&sem=tincidunt&sed=eget&sagittis=tempus&nam=vel&congue=pede&risus=morbi&semper=porttitor&porta=lorem&volutpat=id&quam=ligula&pede=suspendisse&lobortis=ornare', 'Intermediate');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (1, 'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2024-07-22T05:25:33Z', 'http://whitehouse.gov/posuere/cubilia.png?nisl=porta&aenean=volutpat&lectus=quam&pellentesque=pede&eget=lobortis&nunc=ligula&donec=sit&quis=amet&orci=eleifend&eget=pede&orci=libero&vehicula=quis&condimentum=orci&curabitur=nullam&in=molestie&libero=nibh&ut=in&massa=lectus&volutpat=pellentesque&convallis=at&morbi=nulla&odio=suspendisse&odio=potenti&elementum=cras&eu=in&interdum=purus&eu=eu&tincidunt=magna&in=vulputate&leo=luctus&maecenas=cum&pulvinar=sociis&lobortis=natoque&est=penatibus&phasellus=et&sit=magnis&amet=dis&erat=parturient&nulla=montes&tempus=nascetur', 'Beginner');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (2, 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2024-10-21T12:45:21Z', 'https://cafepress.com/in/felis/eu/sapien/cursus.xml?eu=luctus&massa=et&donec=ultrices&dapibus=posuere&duis=cubilia&at=curae&velit=donec&eu=pharetra&est=magna&congue=vestibulum&elementum=aliquet&in=ultrices&hac=erat&habitasse=tortor&platea=sollicitudin&dictumst=mi&morbi=sit&vestibulum=amet&velit=lobortis', 'Intermediate');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (7, 'elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2023-02-03T04:01:48Z', 'https://arstechnica.com/sed/augue.png?pede=lobortis&ullamcorper=est&augue=phasellus&a=sit&suscipit=amet&nulla=erat', 'Intermediate');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (2, 'urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2024-02-23T16:15:59Z', 'https://mac.com/morbi/porttitor.xml?habitasse=sed&platea=lacus&dictumst=morbi&morbi=sem&vestibulum=mauris&velit=laoreet&id=ut&pretium=rhoncus&iaculis=aliquet&diam=pulvinar&erat=sed&fermentum=nisl&justo=nunc&nec=rhoncus&condimentum=dui&neque=vel&sapien=sem&placerat=sed&ante=sagittis&nulla=nam&justo=congue&aliquam=risus&quis=semper&turpis=porta&eget=volutpat&elit=quam&sodales=pede&scelerisque=lobortis&mauris=ligula&sit=sit&amet=amet&eros=eleifend&suspendisse=pede&accumsan=libero&tortor=quis&quis=orci&turpis=nullam&sed=molestie&ante=nibh&vivamus=in&tortor=lectus&duis=pellentesque&mattis=at&egestas=nulla&metus=suspendisse&aenean=potenti&fermentum=cras&donec=in&ut=purus&mauris=eu&eget=magna&massa=vulputate&tempor=luctus&convallis=cum&nulla=sociis&neque=natoque&libero=penatibus&convallis=et&eget=magnis', 'Intermediate');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (8, 'congue eget semper rutrum nulla nunc purus phasellus in felis donec semper', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2023-06-22T03:23:16Z', 'http://theguardian.com/massa/tempor/convallis/nulla/neque/libero/convallis.json?platea=sapien&dictumst=ut&aliquam=nunc&augue=vestibulum&quam=ante&sollicitudin=ipsum&vitae=primis&consectetuer=in&eget=faucibus&rutrum=orci&at=luctus&lorem=et&integer=ultrices&tincidunt=posuere&ante=cubilia&vel=curae&ipsum=mauris&praesent=viverra&blandit=diam&lacinia=vitae&erat=quam&vestibulum=suspendisse&sed=potenti&magna=nullam&at=porttitor&nunc=lacus', 'Beginner');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (3, 'nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2024-07-17T16:27:28Z', 'http://list-manage.com/orci/luctus/et/ultrices.json?aliquam=amet&lacus=consectetuer&morbi=adipiscing&quis=elit&tortor=proin&id=interdum&nulla=mauris&ultrices=non&aliquet=ligula&maecenas=pellentesque&leo=ultrices&odio=phasellus&condimentum=id&id=sapien&luctus=in&nec=sapien&molestie=iaculis&sed=congue&justo=vivamus&pellentesque=metus&viverra=arcu&pede=adipiscing&ac=molestie&diam=hendrerit&cras=at&pellentesque=vulputate&volutpat=vitae&dui=nisl&maecenas=aenean&tristique=lectus&est=pellentesque&et=eget&tempus=nunc&semper=donec&est=quis&quam=orci&pharetra=eget&magna=orci&ac=vehicula&consequat=condimentum&metus=curabitur&sapien=in&ut=libero&nunc=ut&vestibulum=massa&ante=volutpat&ipsum=convallis&primis=morbi&in=odio&faucibus=odio&orci=elementum&luctus=eu&et=interdum&ultrices=eu&posuere=tincidunt&cubilia=in&curae=leo&mauris=maecenas&viverra=pulvinar&diam=lobortis&vitae=est&quam=phasellus&suspendisse=sit&potenti=amet&nullam=erat&porttitor=nulla&lacus=tempus&at=vivamus&turpis=in&donec=felis&posuere=eu&metus=sapien&vitae=cursus&ipsum=vestibulum&aliquam=proin&non=eu&mauris=mi&morbi=nulla&non=ac&lectus=enim&aliquam=in&sit=tempor&amet=turpis&diam=nec&in=euismod&magna=scelerisque&bibendum=quam&imperdiet=turpis&nullam=adipiscing&orci=lorem&pede=vitae&venenatis=mattis', 'Advanced');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (9, 'ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2023-01-27T03:31:27Z', 'http://ifeng.com/non/ligula/pellentesque/ultrices.html?enim=volutpat&lorem=erat&ipsum=quisque&dolor=erat&sit=eros&amet=viverra&consectetuer=eget&adipiscing=congue&elit=eget&proin=semper&interdum=rutrum&mauris=nulla&non=nunc&ligula=purus&pellentesque=phasellus&ultrices=in&phasellus=felis&id=donec&sapien=semper&in=sapien&sapien=a&iaculis=libero&congue=nam&vivamus=dui&metus=proin&arcu=leo&adipiscing=odio&molestie=porttitor&hendrerit=id&at=consequat&vulputate=in&vitae=consequat&nisl=ut&aenean=nulla&lectus=sed&pellentesque=accumsan&eget=felis', 'Intermediate');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (6, 'tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2023-11-01T19:08:59Z', 'https://dion.ne.jp/ut/nulla/sed/accumsan/felis/ut.html?a=sapien&suscipit=sapien&nulla=non&elit=mi&ac=integer&nulla=ac&sed=neque&vel=duis&enim=bibendum&sit=morbi&amet=non&nunc=quam&viverra=nec&dapibus=dui&nulla=luctus&suscipit=rutrum&ligula=nulla&in=tellus&lacus=in&curabitur=sagittis&at=dui&ipsum=vel&ac=nisl&tellus=duis&semper=ac&interdum=nibh&mauris=fusce&ullamcorper=lacus&purus=purus&sit=aliquet&amet=at&nulla=feugiat&quisque=non&arcu=pretium&libero=quis&rutrum=lectus&ac=suspendisse&lobortis=potenti&vel=in&dapibus=eleifend&at=quam&diam=a&nam=odio&tristique=in&tortor=hac&eu=habitasse&pede=platea', 'Beginner');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (6, 'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2023-09-23T00:02:59Z', 'http://godaddy.com/est/lacinia/nisi/venenatis.png?at=integer&velit=tincidunt&vivamus=ante&vel=vel&nulla=ipsum&eget=praesent&eros=blandit&elementum=lacinia&pellentesque=erat&quisque=vestibulum&porta=sed&volutpat=magna&erat=at&quisque=nunc&erat=commodo&eros=placerat&viverra=praesent&eget=blandit&congue=nam&eget=nulla&semper=integer&rutrum=pede&nulla=justo&nunc=lacinia&purus=eget&phasellus=tincidunt&in=eget&felis=tempus&donec=vel&semper=pede&sapien=morbi&a=porttitor&libero=lorem&nam=id&dui=ligula&proin=suspendisse&leo=ornare&odio=consequat&porttitor=lectus&id=in&consequat=est&in=risus&consequat=auctor&ut=sed&nulla=tristique', 'Intermediate');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (2, 'luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2023-10-04T22:10:55Z', 'https://sogou.com/consequat/metus/sapien/ut/nunc/vestibulum.jpg?donec=porttitor&dapibus=pede&duis=justo&at=eu&velit=massa&eu=donec&est=dapibus&congue=duis&elementum=at&in=velit&hac=eu&habitasse=est&platea=congue&dictumst=elementum&morbi=in&vestibulum=hac&velit=habitasse&id=platea&pretium=dictumst&iaculis=morbi&diam=vestibulum&erat=velit&fermentum=id&justo=pretium&nec=iaculis&condimentum=diam&neque=erat&sapien=fermentum&placerat=justo&ante=nec&nulla=condimentum&justo=neque&aliquam=sapien&quis=placerat&turpis=ante&eget=nulla&elit=justo&sodales=aliquam&scelerisque=quis&mauris=turpis&sit=eget&amet=elit&eros=sodales&suspendisse=scelerisque&accumsan=mauris&tortor=sit&quis=amet&turpis=eros&sed=suspendisse&ante=accumsan&vivamus=tortor&tortor=quis&duis=turpis&mattis=sed&egestas=ante&metus=vivamus&aenean=tortor&fermentum=duis&donec=mattis', 'Advanced');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (9, 'quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2023-11-23T08:29:21Z', 'http://intel.com/eu/sapien/cursus/vestibulum/proin.json?habitasse=aliquam&platea=erat&dictumst=volutpat&aliquam=in&augue=congue&quam=etiam&sollicitudin=justo&vitae=etiam&consectetuer=pretium&eget=iaculis&rutrum=justo&at=in&lorem=hac&integer=habitasse&tincidunt=platea&ante=dictumst&vel=etiam&ipsum=faucibus&praesent=cursus&blandit=urna&lacinia=ut&erat=tellus&vestibulum=nulla&sed=ut&magna=erat&at=id&nunc=mauris&commodo=vulputate&placerat=elementum&praesent=nullam&blandit=varius&nam=nulla&nulla=facilisi&integer=cras&pede=non', 'Intermediate');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (3, 'vel nisl duis ac nibh fusce lacus purus aliquet at', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2024-08-21T00:33:33Z', 'https://hao123.com/blandit/nam/nulla/integer/pede.xml?morbi=vestibulum&vel=ante&lectus=ipsum&in=primis&quam=in&fringilla=faucibus&rhoncus=orci&mauris=luctus&enim=et&leo=ultrices&rhoncus=posuere&sed=cubilia&vestibulum=curae&sit=duis&amet=faucibus&cursus=accumsan&id=odio&turpis=curabitur&integer=convallis&aliquet=duis&massa=consequat&id=dui&lobortis=nec&convallis=nisi&tortor=volutpat&risus=eleifend&dapibus=donec&augue=ut&vel=dolor&accumsan=morbi&tellus=vel&nisi=lectus&eu=in&orci=quam&mauris=fringilla&lacinia=rhoncus&sapien=mauris&quis=enim&libero=leo&nullam=rhoncus&sit=sed&amet=vestibulum&turpis=sit&elementum=amet&ligula=cursus&vehicula=id&consequat=turpis&morbi=integer&a=aliquet&ipsum=massa&integer=id&a=lobortis&nibh=convallis&in=tortor&quis=risus&justo=dapibus&maecenas=augue&rhoncus=vel&aliquam=accumsan&lacus=tellus&morbi=nisi&quis=eu&tortor=orci&id=mauris&nulla=lacinia&ultrices=sapien', 'Intermediate');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (9, 'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2023-03-05T14:55:12Z', 'http://loc.gov/phasellus/sit/amet/erat/nulla.aspx?ac=sociis&est=natoque&lacinia=penatibus&nisi=et&venenatis=magnis&tristique=dis&fusce=parturient&congue=montes&diam=nascetur&id=ridiculus&ornare=mus&imperdiet=vivamus&sapien=vestibulum&urna=sagittis&pretium=sapien&nisl=cum&ut=sociis&volutpat=natoque&sapien=penatibus&arcu=et&sed=magnis&augue=dis&aliquam=parturient&erat=montes&volutpat=nascetur&in=ridiculus&congue=mus&etiam=etiam&justo=vel&etiam=augue&pretium=vestibulum&iaculis=rutrum&justo=rutrum&in=neque&hac=aenean&habitasse=auctor&platea=gravida&dictumst=sem&etiam=praesent&faucibus=id&cursus=massa&urna=id&ut=nisl&tellus=venenatis&nulla=lacinia&ut=aenean&erat=sit&id=amet&mauris=justo&vulputate=morbi&elementum=ut&nullam=odio&varius=cras&nulla=mi&facilisi=pede&cras=malesuada&non=in&velit=imperdiet&nec=et&nisi=commodo&vulputate=vulputate&nonummy=justo&maecenas=in&tincidunt=blandit&lacus=ultrices&at=enim&velit=lorem&vivamus=ipsum&vel=dolor&nulla=sit&eget=amet&eros=consectetuer&elementum=adipiscing&pellentesque=elit&quisque=proin&porta=interdum', 'Beginner');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (1, 'et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2024-10-23T07:50:50Z', 'http://barnesandnoble.com/penatibus/et/magnis/dis.aspx?sed=odio&ante=condimentum&vivamus=id&tortor=luctus&duis=nec&mattis=molestie&egestas=sed&metus=justo&aenean=pellentesque&fermentum=viverra&donec=pede&ut=ac&mauris=diam&eget=cras&massa=pellentesque&tempor=volutpat&convallis=dui&nulla=maecenas&neque=tristique&libero=est&convallis=et&eget=tempus&eleifend=semper&luctus=est&ultricies=quam&eu=pharetra&nibh=magna&quisque=ac&id=consequat&justo=metus&sit=sapien&amet=ut&sapien=nunc&dignissim=vestibulum&vestibulum=ante&vestibulum=ipsum&ante=primis&ipsum=in', 'Beginner');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (9, 'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2024-01-12T00:30:52Z', 'https://flavors.me/nulla/ultrices/aliquet/maecenas/leo/odio.jpg?quisque=in&id=tempus&justo=sit&sit=amet&amet=sem&sapien=fusce&dignissim=consequat&vestibulum=nulla&vestibulum=nisl&ante=nunc&ipsum=nisl&primis=duis&in=bibendum&faucibus=felis&orci=sed&luctus=interdum&et=venenatis&ultrices=turpis&posuere=enim&cubilia=blandit&curae=mi&nulla=in&dapibus=porttitor&dolor=pede&vel=justo&est=eu&donec=massa&odio=donec&justo=dapibus&sollicitudin=duis&ut=at&suscipit=velit&a=eu&feugiat=est&et=congue&eros=elementum&vestibulum=in&ac=hac&est=habitasse&lacinia=platea&nisi=dictumst&venenatis=morbi&tristique=vestibulum&fusce=velit&congue=id&diam=pretium&id=iaculis', 'Intermediate');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (2, 'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2024-05-24T05:47:13Z', 'http://auda.org.au/amet/nulla/quisque/arcu/libero/rutrum/ac.js?posuere=libero&nonummy=quis&integer=orci&non=nullam&velit=molestie&donec=nibh&diam=in&neque=lectus&vestibulum=pellentesque&eget=at', 'Intermediate');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (1, 'mi integer ac neque duis bibendum morbi non quam nec dui luctus', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2023-09-28T10:49:17Z', 'http://typepad.com/ridiculus/mus.js?sollicitudin=blandit&vitae=ultrices&consectetuer=enim&eget=lorem&rutrum=ipsum&at=dolor&lorem=sit&integer=amet&tincidunt=consectetuer&ante=adipiscing&vel=elit&ipsum=proin&praesent=interdum&blandit=mauris&lacinia=non&erat=ligula&vestibulum=pellentesque&sed=ultrices&magna=phasellus&at=id&nunc=sapien&commodo=in&placerat=sapien&praesent=iaculis&blandit=congue&nam=vivamus&nulla=metus&integer=arcu&pede=adipiscing&justo=molestie&lacinia=hendrerit&eget=at&tincidunt=vulputate&eget=vitae&tempus=nisl&vel=aenean&pede=lectus&morbi=pellentesque&porttitor=eget&lorem=nunc&id=donec&ligula=quis&suspendisse=orci&ornare=eget&consequat=orci&lectus=vehicula&in=condimentum&est=curabitur&risus=in&auctor=libero&sed=ut&tristique=massa&in=volutpat&tempus=convallis&sit=morbi&amet=odio&sem=odio&fusce=elementum&consequat=eu&nulla=interdum&nisl=eu&nunc=tincidunt&nisl=in&duis=leo&bibendum=maecenas&felis=pulvinar&sed=lobortis&interdum=est', 'Advanced');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (10, 'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '2024-09-26T21:13:43Z', 'https://biblegateway.com/orci/luctus/et.aspx?sem=turpis&duis=elementum&aliquam=ligula&convallis=vehicula&nunc=consequat&proin=morbi&at=a&turpis=ipsum&a=integer&pede=a&posuere=nibh&nonummy=in&integer=quis&non=justo&velit=maecenas&donec=rhoncus&diam=aliquam&neque=lacus&vestibulum=morbi&eget=quis&vulputate=tortor&ut=id&ultrices=nulla&vel=ultrices&augue=aliquet&vestibulum=maecenas&ante=leo&ipsum=odio&primis=condimentum&in=id&faucibus=luctus&orci=nec&luctus=molestie&et=sed&ultrices=justo&posuere=pellentesque&cubilia=viverra&curae=pede&donec=ac&pharetra=diam&magna=cras&vestibulum=pellentesque&aliquet=volutpat&ultrices=dui&erat=maecenas&tortor=tristique&sollicitudin=est&mi=et&sit=tempus&amet=semper&lobortis=est&sapien=quam&sapien=pharetra&non=magna&mi=ac&integer=consequat&ac=metus&neque=sapien&duis=ut&bibendum=nunc&morbi=vestibulum&non=ante&quam=ipsum&nec=primis', 'Beginner');
insert into Lessons (CourseId, LessonTitle, Content, CreatedAt, Link, Level) values (5, 'nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '2023-03-22T20:57:44Z', 'http://booking.com/ullamcorper.jpg?id=sit&nulla=amet&ultrices=diam&aliquet=in&maecenas=magna&leo=bibendum&odio=imperdiet&condimentum=nullam&id=orci&luctus=pede&nec=venenatis&molestie=non&sed=sodales&justo=sed&pellentesque=tincidunt&viverra=eu&pede=felis&ac=fusce&diam=posuere&cras=felis&pellentesque=sed&volutpat=lacus&dui=morbi&maecenas=sem&tristique=mauris&est=laoreet&et=ut&tempus=rhoncus&semper=aliquet&est=pulvinar&quam=sed&pharetra=nisl&magna=nunc&ac=rhoncus&consequat=dui&metus=vel&sapien=sem&ut=sed&nunc=sagittis&vestibulum=nam&ante=congue&ipsum=risus&primis=semper&in=porta&faucibus=volutpat&orci=quam&luctus=pede&et=lobortis&ultrices=ligula&posuere=sit&cubilia=amet&curae=eleifend&mauris=pede&viverra=libero', 'Beginner');
GO
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'In congue. Etiam justo. Etiam pretium iaculis justo.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Fusce consequat. Nulla nisl. Nunc nisl.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Fusce consequat. Nulla nisl. Nunc nisl.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('In congue. Etiam justo. Etiam pretium iaculis justo.', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Fusce consequat. Nulla nisl. Nunc nisl.', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'Fusce consequat. Nulla nisl. Nunc nisl.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Fusce consequat. Nulla nisl. Nunc nisl.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
insert into Questions (QContent, Opt1, Opt2, Opt3, Opt4) values ('Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
GO

insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (1, 14);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (2, 10);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (3, 2);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (4, 22);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (5, 44);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (6, 33);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (7, 4);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (8, 8);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (9, 48);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (10, 26);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (11, 12);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (12, 28);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (13, 3);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (14, 42);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (15, 4);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (16, 29);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (17, 45);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (18, 28);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (19, 31);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (20, 50);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (1, 40);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (2, 20);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (3, 29);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (4, 3);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (5, 18);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (6, 48);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (7, 26);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (8, 48);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (9, 45);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (10, 39);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (11, 38);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (12, 30);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (13, 37);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (14, 17);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (15, 24);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (16, 12);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (17, 33);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (18, 2);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (19, 49);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (20, 34);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (1, 27);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (2, 16);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (3, 32);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (4, 17);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (5, 3);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (6, 15);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (7, 33);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (8, 20);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (9, 22);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (10, 13);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (11, 11);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (12, 45);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (13, 20);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (14, 50);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (15, 47);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (16, 38);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (17, 14);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (18, 21);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (19, 48);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (20, 33);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (1, 3);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (2, 33);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (3, 48);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (4, 34);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (5, 40);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (6, 19);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (7, 22);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (8, 9);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (9, 26);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (10, 7);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (11, 49);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (12, 43);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (13, 32);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (14, 46);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (15, 7);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (16, 1);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (17, 38);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (18, 24);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (19, 20);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (20, 22);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (1, 5);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (2, 14);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (3, 25);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (4, 15);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (5, 41);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (6, 16);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (7, 47);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (8, 17);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (9, 38);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (10, 3);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (11, 27);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (12, 27);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (13, 7);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (14, 43);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (15, 25);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (16, 45);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (17, 49);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (18, 6);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (19, 29);
insert into [AssignmentQuestion] (AssignmentId, QuestionId) values (20, 18);
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/21/2024 1:11:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/21/2024 1:11:44 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/21/2024 1:11:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/21/2024 1:11:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/21/2024 1:11:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/21/2024 1:11:44 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/21/2024 1:11:44 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AssignmentQuestion_QuestionId]    Script Date: 7/21/2024 1:11:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_AssignmentQuestion_QuestionId] ON [dbo].[AssignmentQuestion]
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Assignments_CourseId]    Script Date: 7/21/2024 1:11:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Assignments_CourseId] ON [dbo].[Assignments]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Courses_InstructorId]    Script Date: 7/21/2024 1:11:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Courses_InstructorId] ON [dbo].[Courses]
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Enrollments_CourseId]    Script Date: 7/21/2024 1:11:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Enrollments_CourseId] ON [dbo].[Enrollments]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Enrollments_UserId]    Script Date: 7/21/2024 1:11:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Enrollments_UserId] ON [dbo].[Enrollments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Lessons_CourseId]    Script Date: 7/21/2024 1:11:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Lessons_CourseId] ON [dbo].[Lessons]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Parents_StudentId]    Script Date: 7/21/2024 1:11:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Parents_StudentId] ON [dbo].[Parents]
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Submissions_AssignmentId]    Script Date: 7/21/2024 1:11:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Submissions_AssignmentId] ON [dbo].[Submissions]
(
	[AssignmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Submissions_UserId]    Script Date: 7/21/2024 1:11:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Submissions_UserId] ON [dbo].[Submissions]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Lessons] ADD  DEFAULT (N'') FOR [Level]
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
