USE [master]
GO
/*******************************************************************************
   Drop database if it exists
********************************************************************************/
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'CourseManagement')
BEGIN
	ALTER DATABASE [CourseManagement] SET OFFLINE WITH ROLLBACK IMMEDIATE;
	ALTER DATABASE [CourseManagement] SET ONLINE;
	DROP DATABASE [CourseManagement];
END

GO
/****** Object:  Database [CourseManagement]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[Admins]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[AssignmentQuestion]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[Assignments]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[Courses]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[Enrollments]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[Lessons]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[Parents]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[Questions]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[Submissions]    Script Date: 7/21/2024 3:03:43 PM ******/
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
/****** Object:  Table [dbo].[Teachers]    Script Date: 7/21/2024 3:03:43 PM ******/
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
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [Address], [CreatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Image]) VALUES (N'a4474ccd-b23f-43e8-941a-832372777d27', N'Teacher', N'Duc', CAST(N'2024-07-11T00:00:00.0000000' AS DateTime2), N'tn', CAST(N'2024-07-02T23:16:38.9744327' AS DateTime2), N'abcdef@gmail.com', N'ABCDEF@GMAIL.COM', N'abcdef@gmail.com', N'ABCDEF@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEFlQeSL7GK/9kIgVCza2upmIPQBDRU3zDM9L8Tf+nFCZH3F4e9uB3UqLcCnqL76jYg==', N'SVECZPKN5KHV4IDOUQRHYBJ2KA72WZ4K', N'c24f41d9-ad37-4e29-9174-3661cdccbe33', N'123456789', 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Dob], [Address], [CreatedAt], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Image]) VALUES (N'cf43bb08-b822-4504-9ac3-7aa90627de4a', N'Student', N'hai', CAST(N'2024-07-03T00:00:00.0000000' AS DateTime2), N'lmao lmao lmao', CAST(N'2024-07-21T00:18:59.4593400' AS DateTime2), N'huy6ach2@gmail.com', N'HUY6ACH2@GMAIL.COM', N'huy6ach2@gmail.com', N'HUY6ACH2@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEN5OIpyyRObXfLGoYRU3krhh4fpBJ/z2+bq9STKvZGS3G17LH6kgYU+Ho+fzSms1+Q==', N'DOJ7XDRS3ZXZI4TSR2ZMWVGT6YF4E2N7', N'632edd50-2827-4543-ad0b-3900b7096bdc', N'01234564489', 0, 0, NULL, 1, 0, NULL)
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

INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (1, N'at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse', N'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2012-07-17T13:57:02.0000000' AS DateTime2), N'https://photobucket.com/suspendisse/ornare.jsp?ullamcorper=sit&augue=amet&a=consectetuer&suscipit=adipiscing&nulla=elit&elit=proin&ac=interdum&nulla=mauris&sed=non&vel=ligula&enim=pellentesque&sit=ultrices&amet=phasellus&nunc=id&viverra=sapien&dapibus=in&nulla=sapien&suscipit=iaculis&ligula=congue&in=vivamus&lacus=metus&curabitur=arcu&at=adipiscing&ipsum=molestie&ac=hendrerit&tellus=at&semper=vulputate&interdum=vitae&mauris=nisl&ullamcorper=aenean&purus=lectus&sit=pellentesque&amet=eget&nulla=nunc&quisque=donec&arcu=quis&libero=orci')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (2, N'sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus', N'Mauris sit amet eros.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2013-01-05T13:21:34.0000000' AS DateTime2), N'http://godaddy.com/ornare/imperdiet/sapien/urna.json?vitae=luctus&nisi=et')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (3, N'in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer', N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2022-09-24T02:53:40.0000000' AS DateTime2), N'http://sciencedaily.com/quam/suspendisse/potenti/nullam/porttitor/lacus/at.jsp?curabitur=nec&gravida=euismod&nisi=scelerisque&at=quam&nibh=turpis&in=adipiscing&hac=lorem&habitasse=vitae&platea=mattis&dictumst=nibh&aliquam=ligula&augue=nec&quam=sem&sollicitudin=duis&vitae=aliquam&consectetuer=convallis&eget=nunc&rutrum=proin&at=at&lorem=turpis&integer=a&tincidunt=pede&ante=posuere&vel=nonummy&ipsum=integer&praesent=non&blandit=velit&lacinia=donec&erat=diam&vestibulum=neque&sed=vestibulum&magna=eget&at=vulputate&nunc=ut&commodo=ultrices&placerat=vel&praesent=augue&blandit=vestibulum&nam=ante&nulla=ipsum&integer=primis&pede=in&justo=faucibus&lacinia=orci&eget=luctus&tincidunt=et&eget=ultrices&tempus=posuere&vel=cubilia&pede=curae&morbi=donec&porttitor=pharetra&lorem=magna&id=vestibulum&ligula=aliquet&suspendisse=ultrices&ornare=erat&consequat=tortor&lectus=sollicitudin&in=mi&est=sit&risus=amet&auctor=lobortis&sed=sapien&tristique=sapien&in=non&tempus=mi&sit=integer&amet=ac')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (4, N'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', N'Donec ut dolor.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2000-09-14T13:04:26.0000000' AS DateTime2), N'http://usatoday.com/condimentum/neque/sapien.jsp?commodo=ligula&vulputate=suspendisse&justo=ornare&in=consequat&blandit=lectus&ultrices=in&enim=est&lorem=risus&ipsum=auctor&dolor=sed&sit=tristique&amet=in&consectetuer=tempus&adipiscing=sit&elit=amet&proin=sem&interdum=fusce&mauris=consequat&non=nulla&ligula=nisl&pellentesque=nunc&ultrices=nisl&phasellus=duis&id=bibendum&sapien=felis&in=sed&sapien=interdum&iaculis=venenatis&congue=turpis&vivamus=enim&metus=blandit&arcu=mi&adipiscing=in')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (5, N'mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus', N'Nulla tempus.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2004-10-17T18:53:14.0000000' AS DateTime2), N'https://guardian.co.uk/nonummy/maecenas/tincidunt/lacus/at/velit.png?convallis=primis&morbi=in&odio=faucibus&odio=orci&elementum=luctus&eu=et&interdum=ultrices&eu=posuere&tincidunt=cubilia&in=curae&leo=donec&maecenas=pharetra&pulvinar=magna&lobortis=vestibulum&est=aliquet&phasellus=ultrices&sit=erat&amet=tortor&erat=sollicitudin&nulla=mi&tempus=sit&vivamus=amet&in=lobortis&felis=sapien&eu=sapien&sapien=non&cursus=mi&vestibulum=integer&proin=ac&eu=neque&mi=duis&nulla=bibendum&ac=morbi&enim=non&in=quam&tempor=nec&turpis=dui&nec=luctus&euismod=rutrum&scelerisque=nulla&quam=tellus&turpis=in&adipiscing=sagittis&lorem=dui&vitae=vel&mattis=nisl&nibh=duis&ligula=ac&nec=nibh&sem=fusce&duis=lacus&aliquam=purus&convallis=aliquet&nunc=at&proin=feugiat&at=non&turpis=pretium&a=quis&pede=lectus&posuere=suspendisse&nonummy=potenti&integer=in&non=eleifend&velit=quam&donec=a&diam=odio&neque=in&vestibulum=hac&eget=habitasse&vulputate=platea&ut=dictumst&ultrices=maecenas&vel=ut&augue=massa&vestibulum=quis&ante=augue&ipsum=luctus&primis=tincidunt&in=nulla&faucibus=mollis&orci=molestie&luctus=lorem&et=quisque&ultrices=ut&posuere=erat&cubilia=curabitur&curae=gravida&donec=nisi&pharetra=at&magna=nibh&vestibulum=in&aliquet=hac&ultrices=habitasse&erat=platea')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (6, N'interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis', N'Morbi ut odio.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2009-09-16T12:27:11.0000000' AS DateTime2), N'http://pcworld.com/integer/aliquet/massa/id.aspx?consequat=varius&lectus=ut&in=blandit&est=non&risus=interdum&auctor=in&sed=ante&tristique=vestibulum&in=ante&tempus=ipsum&sit=primis&amet=in&sem=faucibus&fusce=orci&consequat=luctus&nulla=et&nisl=ultrices&nunc=posuere&nisl=cubilia&duis=curae&bibendum=duis&felis=faucibus&sed=accumsan&interdum=odio&venenatis=curabitur&turpis=convallis&enim=duis&blandit=consequat&mi=dui&in=nec&porttitor=nisi&pede=volutpat&justo=eleifend&eu=donec&massa=ut&donec=dolor&dapibus=morbi&duis=vel&at=lectus&velit=in&eu=quam&est=fringilla&congue=rhoncus&elementum=mauris&in=enim&hac=leo&habitasse=rhoncus&platea=sed')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (7, N'vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et', N'Nulla mollis molestie lorem.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2006-07-25T16:28:52.0000000' AS DateTime2), N'http://photobucket.com/mollis/molestie/lorem/quisque/ut/erat.jsp?in=gravida&faucibus=nisi&orci=at&luctus=nibh&et=in&ultrices=hac&posuere=habitasse&cubilia=platea&curae=dictumst&donec=aliquam&pharetra=augue&magna=quam&vestibulum=sollicitudin&aliquet=vitae&ultrices=consectetuer')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (8, N'platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at', N'Nullam sit amet turpis elementum ligula vehicula consequat.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2003-08-12T00:19:25.0000000' AS DateTime2), N'https://wisc.edu/libero/convallis/eget.js?in=turpis&faucibus=nec&orci=euismod&luctus=scelerisque&et=quam&ultrices=turpis&posuere=adipiscing&cubilia=lorem&curae=vitae&donec=mattis&pharetra=nibh&magna=ligula&vestibulum=nec&aliquet=sem&ultrices=duis&erat=aliquam&tortor=convallis&sollicitudin=nunc&mi=proin&sit=at&amet=turpis&lobortis=a&sapien=pede&sapien=posuere&non=nonummy&mi=integer&integer=non&ac=velit&neque=donec&duis=diam&bibendum=neque&morbi=vestibulum&non=eget&quam=vulputate&nec=ut&dui=ultrices&luctus=vel&rutrum=augue&nulla=vestibulum')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (9, N'eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien', N'Aenean sit amet justo.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2018-01-09T22:47:37.0000000' AS DateTime2), N'http://nba.com/porttitor.html?turpis=morbi&a=vestibulum&pede=velit&posuere=id&nonummy=pretium&integer=iaculis&non=diam&velit=erat&donec=fermentum&diam=justo&neque=nec&vestibulum=condimentum&eget=neque&vulputate=sapien&ut=placerat&ultrices=ante&vel=nulla&augue=justo&vestibulum=aliquam&ante=quis&ipsum=turpis&primis=eget&in=elit&faucibus=sodales&orci=scelerisque&luctus=mauris&et=sit&ultrices=amet&posuere=eros&cubilia=suspendisse&curae=accumsan&donec=tortor&pharetra=quis&magna=turpis&vestibulum=sed&aliquet=ante&ultrices=vivamus&erat=tortor&tortor=duis&sollicitudin=mattis&mi=egestas&sit=metus&amet=aenean&lobortis=fermentum&sapien=donec&sapien=ut&non=mauris&mi=eget&integer=massa&ac=tempor&neque=convallis&duis=nulla&bibendum=neque&morbi=libero&non=convallis&quam=eget&nec=eleifend&dui=luctus&luctus=ultricies&rutrum=eu&nulla=nibh&tellus=quisque&in=id&sagittis=justo&dui=sit&vel=amet&nisl=sapien&duis=dignissim&ac=vestibulum&nibh=vestibulum&fusce=ante&lacus=ipsum&purus=primis&aliquet=in&at=faucibus&feugiat=orci&non=luctus&pretium=et&quis=ultrices&lectus=posuere&suspendisse=cubilia&potenti=curae&in=nulla&eleifend=dapibus&quam=dolor&a=vel&odio=est&in=donec&hac=odio&habitasse=justo&platea=sollicitudin&dictumst=ut&maecenas=suscipit&ut=a')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Description], [InstructorId], [CreatedAt], [Image]) VALUES (10, N'praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras', N'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', N'a4474ccd-b23f-43e8-941a-832372777d27', CAST(N'2017-06-05T20:42:02.0000000' AS DateTime2), N'https://scribd.com/varius/ut/blandit/non.js?morbi=a&sem=suscipit&mauris=nulla&laoreet=elit&ut=ac&rhoncus=nulla&aliquet=sed&pulvinar=vel&sed=enim&nisl=sit&nunc=amet&rhoncus=nunc&dui=viverra&vel=dapibus&sem=nulla')
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Lessons] ON 

INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (1, 10, N'nulla integer pede justo lacinia eget tincidunt eget tempus vel', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', CAST(N'2023-06-16T02:23:00.0000000' AS DateTime2), N'https://google.co.uk/proin.json?augue=tristique&aliquam=in&erat=tempus&volutpat=sit&in=amet&congue=sem&etiam=fusce&justo=consequat&etiam=nulla&pretium=nisl&iaculis=nunc&justo=nisl&in=duis&hac=bibendum&habitasse=felis&platea=sed&dictumst=interdum&etiam=venenatis&faucibus=turpis&cursus=enim&urna=blandit&ut=mi&tellus=in&nulla=porttitor&ut=pede&erat=justo&id=eu&mauris=massa&vulputate=donec&elementum=dapibus&nullam=duis&varius=at&nulla=velit&facilisi=eu&cras=est&non=congue&velit=elementum&nec=in&nisi=hac&vulputate=habitasse&nonummy=platea&maecenas=dictumst&tincidunt=morbi&lacus=vestibulum&at=velit&velit=id&vivamus=pretium&vel=iaculis&nulla=diam&eget=erat&eros=fermentum&elementum=justo&pellentesque=nec&quisque=condimentum&porta=neque&volutpat=sapien', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (2, 2, N'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', CAST(N'2024-12-24T06:12:43.0000000' AS DateTime2), N'http://harvard.edu/sapien.jsp?a=donec&libero=vitae&nam=nisi&dui=nam&proin=ultrices&leo=libero&odio=non&porttitor=mattis&id=pulvinar&consequat=nulla&in=pede&consequat=ullamcorper&ut=augue&nulla=a&sed=suscipit&accumsan=nulla&felis=elit&ut=ac&at=nulla&dolor=sed&quis=vel&odio=enim&consequat=sit&varius=amet&integer=nunc&ac=viverra&leo=dapibus&pellentesque=nulla&ultrices=suscipit&mattis=ligula&odio=in&donec=lacus', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (3, 4, N'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit', N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', CAST(N'2023-11-23T03:05:14.0000000' AS DateTime2), N'http://comcast.net/tortor/risus/dapibus/augue.json?placerat=libero&ante=nam&nulla=dui&justo=proin&aliquam=leo&quis=odio&turpis=porttitor&eget=id&elit=consequat&sodales=in&scelerisque=consequat&mauris=ut&sit=nulla&amet=sed&eros=accumsan&suspendisse=felis&accumsan=ut&tortor=at&quis=dolor&turpis=quis&sed=odio&ante=consequat&vivamus=varius&tortor=integer&duis=ac&mattis=leo&egestas=pellentesque&metus=ultrices&aenean=mattis&fermentum=odio&donec=donec&ut=vitae', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (4, 5, N'ornare consequat lectus in est risus auctor sed tristique in tempus sit', N'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', CAST(N'2023-04-28T05:58:55.0000000' AS DateTime2), N'https://furl.net/semper/rutrum/nulla/nunc/purus.jsp?eget=neque&rutrum=sapien&at=placerat&lorem=ante&integer=nulla&tincidunt=justo&ante=aliquam&vel=quis&ipsum=turpis&praesent=eget&blandit=elit&lacinia=sodales&erat=scelerisque&vestibulum=mauris&sed=sit&magna=amet&at=eros&nunc=suspendisse&commodo=accumsan&placerat=tortor&praesent=quis&blandit=turpis&nam=sed&nulla=ante&integer=vivamus&pede=tortor&justo=duis&lacinia=mattis&eget=egestas&tincidunt=metus&eget=aenean&tempus=fermentum&vel=donec&pede=ut&morbi=mauris&porttitor=eget&lorem=massa&id=tempor&ligula=convallis&suspendisse=nulla&ornare=neque&consequat=libero&lectus=convallis&in=eget&est=eleifend&risus=luctus&auctor=ultricies&sed=eu&tristique=nibh&in=quisque&tempus=id&sit=justo&amet=sit&sem=amet&fusce=sapien&consequat=dignissim&nulla=vestibulum&nisl=vestibulum&nunc=ante&nisl=ipsum&duis=primis&bibendum=in&felis=faucibus&sed=orci&interdum=luctus&venenatis=et&turpis=ultrices&enim=posuere&blandit=cubilia&mi=curae&in=nulla&porttitor=dapibus&pede=dolor&justo=vel&eu=est&massa=donec&donec=odio&dapibus=justo&duis=sollicitudin&at=ut&velit=suscipit&eu=a&est=feugiat&congue=et&elementum=eros&in=vestibulum&hac=ac&habitasse=est&platea=lacinia&dictumst=nisi&morbi=venenatis&vestibulum=tristique&velit=fusce&id=congue', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (5, 3, N'cras pellentesque volutpat dui maecenas tristique est et tempus semper est', N'In congue. Etiam justo. Etiam pretium iaculis justo.', CAST(N'2023-06-30T13:29:43.0000000' AS DateTime2), N'http://springer.com/sed/interdum/venenatis/turpis/enim/blandit/mi.aspx?vestibulum=libero&quam=quis&sapien=orci&varius=nullam&ut=molestie&blandit=nibh&non=in&interdum=lectus&in=pellentesque&ante=at&vestibulum=nulla&ante=suspendisse&ipsum=potenti&primis=cras&in=in&faucibus=purus&orci=eu&luctus=magna&et=vulputate&ultrices=luctus&posuere=cum&cubilia=sociis&curae=natoque&duis=penatibus', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (6, 7, N'sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula', N'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', CAST(N'2023-04-02T09:44:43.0000000' AS DateTime2), N'https://sitemeter.com/rutrum/neque/aenean.json?ac=ipsum&tellus=primis&semper=in&interdum=faucibus&mauris=orci&ullamcorper=luctus&purus=et&sit=ultrices', N'Advanced')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (7, 4, N'quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', N'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', CAST(N'2023-09-27T20:13:39.0000000' AS DateTime2), N'http://eepurl.com/amet/sem/fusce/consequat/nulla.xml?platea=ut&dictumst=mauris&etiam=eget&faucibus=massa&cursus=tempor&urna=convallis&ut=nulla&tellus=neque&nulla=libero&ut=convallis&erat=eget&id=eleifend&mauris=luctus&vulputate=ultricies&elementum=eu&nullam=nibh&varius=quisque&nulla=id&facilisi=justo&cras=sit&non=amet&velit=sapien&nec=dignissim&nisi=vestibulum&vulputate=vestibulum&nonummy=ante&maecenas=ipsum&tincidunt=primis&lacus=in&at=faucibus&velit=orci&vivamus=luctus&vel=et&nulla=ultrices&eget=posuere&eros=cubilia&elementum=curae&pellentesque=nulla&quisque=dapibus&porta=dolor&volutpat=vel&erat=est&quisque=donec&erat=odio&eros=justo&viverra=sollicitudin&eget=ut&congue=suscipit', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (8, 10, N'in porttitor pede justo eu massa donec dapibus duis at', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', CAST(N'2024-08-04T19:07:16.0000000' AS DateTime2), N'https://nationalgeographic.com/donec.jpg?rhoncus=amet&mauris=consectetuer&enim=adipiscing&leo=elit&rhoncus=proin&sed=interdum&vestibulum=mauris&sit=non&amet=ligula&cursus=pellentesque&id=ultrices&turpis=phasellus&integer=id&aliquet=sapien&massa=in&id=sapien&lobortis=iaculis&convallis=congue&tortor=vivamus&risus=metus&dapibus=arcu&augue=adipiscing&vel=molestie&accumsan=hendrerit&tellus=at&nisi=vulputate&eu=vitae&orci=nisl&mauris=aenean&lacinia=lectus&sapien=pellentesque&quis=eget', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (9, 8, N'nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', CAST(N'2023-05-28T16:49:52.0000000' AS DateTime2), N'https://odnoklassniki.ru/mattis.xml?primis=pharetra&in=magna&faucibus=ac&orci=consequat&luctus=metus&et=sapien&ultrices=ut&posuere=nunc&cubilia=vestibulum&curae=ante&duis=ipsum&faucibus=primis&accumsan=in&odio=faucibus&curabitur=orci&convallis=luctus&duis=et&consequat=ultrices&dui=posuere&nec=cubilia&nisi=curae&volutpat=mauris&eleifend=viverra&donec=diam&ut=vitae&dolor=quam&morbi=suspendisse&vel=potenti&lectus=nullam&in=porttitor&quam=lacus&fringilla=at&rhoncus=turpis&mauris=donec&enim=posuere&leo=metus&rhoncus=vitae&sed=ipsum&vestibulum=aliquam&sit=non&amet=mauris&cursus=morbi&id=non&turpis=lectus&integer=aliquam&aliquet=sit', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (10, 2, N'nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in', N'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', CAST(N'2023-05-20T14:24:22.0000000' AS DateTime2), N'https://photobucket.com/ut/blandit/non.jsp?augue=posuere&aliquam=cubilia&erat=curae&volutpat=donec&in=pharetra&congue=magna&etiam=vestibulum&justo=aliquet&etiam=ultrices&pretium=erat&iaculis=tortor&justo=sollicitudin&in=mi&hac=sit&habitasse=amet&platea=lobortis&dictumst=sapien&etiam=sapien&faucibus=non&cursus=mi&urna=integer&ut=ac&tellus=neque&nulla=duis&ut=bibendum&erat=morbi&id=non&mauris=quam&vulputate=nec&elementum=dui&nullam=luctus&varius=rutrum&nulla=nulla&facilisi=tellus&cras=in&non=sagittis&velit=dui&nec=vel&nisi=nisl&vulputate=duis&nonummy=ac&maecenas=nibh&tincidunt=fusce&lacus=lacus&at=purus&velit=aliquet&vivamus=at&vel=feugiat&nulla=non&eget=pretium&eros=quis&elementum=lectus&pellentesque=suspendisse&quisque=potenti&porta=in&volutpat=eleifend&erat=quam&quisque=a&erat=odio&eros=in&viverra=hac&eget=habitasse&congue=platea&eget=dictumst&semper=maecenas&rutrum=ut&nulla=massa&nunc=quis&purus=augue&phasellus=luctus&in=tincidunt&felis=nulla&donec=mollis&semper=molestie&sapien=lorem&a=quisque&libero=ut&nam=erat&dui=curabitur', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (11, 2, N'libero nullam sit amet turpis elementum ligula vehicula consequat morbi a', N'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', CAST(N'2024-07-09T02:07:35.0000000' AS DateTime2), N'http://mac.com/mattis/odio/donec/vitae.jsp?vitae=massa&quam=quis&suspendisse=augue&potenti=luctus&nullam=tincidunt&porttitor=nulla&lacus=mollis&at=molestie&turpis=lorem&donec=quisque&posuere=ut&metus=erat&vitae=curabitur&ipsum=gravida&aliquam=nisi&non=at&mauris=nibh&morbi=in&non=hac&lectus=habitasse&aliquam=platea&sit=dictumst&amet=aliquam&diam=augue&in=quam&magna=sollicitudin&bibendum=vitae&imperdiet=consectetuer&nullam=eget&orci=rutrum&pede=at&venenatis=lorem&non=integer&sodales=tincidunt&sed=ante&tincidunt=vel&eu=ipsum&felis=praesent&fusce=blandit&posuere=lacinia&felis=erat&sed=vestibulum&lacus=sed&morbi=magna&sem=at&mauris=nunc&laoreet=commodo&ut=placerat&rhoncus=praesent&aliquet=blandit&pulvinar=nam&sed=nulla&nisl=integer&nunc=pede&rhoncus=justo&dui=lacinia&vel=eget&sem=tincidunt&sed=eget&sagittis=tempus&nam=vel&congue=pede&risus=morbi&semper=porttitor&porta=lorem&volutpat=id&quam=ligula&pede=suspendisse&lobortis=ornare', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (12, 1, N'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', CAST(N'2024-07-22T05:25:33.0000000' AS DateTime2), N'http://whitehouse.gov/posuere/cubilia.png?nisl=porta&aenean=volutpat&lectus=quam&pellentesque=pede&eget=lobortis&nunc=ligula&donec=sit&quis=amet&orci=eleifend&eget=pede&orci=libero&vehicula=quis&condimentum=orci&curabitur=nullam&in=molestie&libero=nibh&ut=in&massa=lectus&volutpat=pellentesque&convallis=at&morbi=nulla&odio=suspendisse&odio=potenti&elementum=cras&eu=in&interdum=purus&eu=eu&tincidunt=magna&in=vulputate&leo=luctus&maecenas=cum&pulvinar=sociis&lobortis=natoque&est=penatibus&phasellus=et&sit=magnis&amet=dis&erat=parturient&nulla=montes&tempus=nascetur', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (13, 2, N'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', CAST(N'2024-10-21T12:45:21.0000000' AS DateTime2), N'https://cafepress.com/in/felis/eu/sapien/cursus.xml?eu=luctus&massa=et&donec=ultrices&dapibus=posuere&duis=cubilia&at=curae&velit=donec&eu=pharetra&est=magna&congue=vestibulum&elementum=aliquet&in=ultrices&hac=erat&habitasse=tortor&platea=sollicitudin&dictumst=mi&morbi=sit&vestibulum=amet&velit=lobortis', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (14, 7, N'elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', N'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', CAST(N'2023-02-03T04:01:48.0000000' AS DateTime2), N'https://arstechnica.com/sed/augue.png?pede=lobortis&ullamcorper=est&augue=phasellus&a=sit&suscipit=amet&nulla=erat', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (15, 2, N'urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius', N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', CAST(N'2024-02-23T16:15:59.0000000' AS DateTime2), N'https://mac.com/morbi/porttitor.xml?habitasse=sed&platea=lacus&dictumst=morbi&morbi=sem&vestibulum=mauris&velit=laoreet&id=ut&pretium=rhoncus&iaculis=aliquet&diam=pulvinar&erat=sed&fermentum=nisl&justo=nunc&nec=rhoncus&condimentum=dui&neque=vel&sapien=sem&placerat=sed&ante=sagittis&nulla=nam&justo=congue&aliquam=risus&quis=semper&turpis=porta&eget=volutpat&elit=quam&sodales=pede&scelerisque=lobortis&mauris=ligula&sit=sit&amet=amet&eros=eleifend&suspendisse=pede&accumsan=libero&tortor=quis&quis=orci&turpis=nullam&sed=molestie&ante=nibh&vivamus=in&tortor=lectus&duis=pellentesque&mattis=at&egestas=nulla&metus=suspendisse&aenean=potenti&fermentum=cras&donec=in&ut=purus&mauris=eu&eget=magna&massa=vulputate&tempor=luctus&convallis=cum&nulla=sociis&neque=natoque&libero=penatibus&convallis=et&eget=magnis', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (16, 8, N'congue eget semper rutrum nulla nunc purus phasellus in felis donec semper', N'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', CAST(N'2023-06-22T03:23:16.0000000' AS DateTime2), N'http://theguardian.com/massa/tempor/convallis/nulla/neque/libero/convallis.json?platea=sapien&dictumst=ut&aliquam=nunc&augue=vestibulum&quam=ante&sollicitudin=ipsum&vitae=primis&consectetuer=in&eget=faucibus&rutrum=orci&at=luctus&lorem=et&integer=ultrices&tincidunt=posuere&ante=cubilia&vel=curae&ipsum=mauris&praesent=viverra&blandit=diam&lacinia=vitae&erat=quam&vestibulum=suspendisse&sed=potenti&magna=nullam&at=porttitor&nunc=lacus', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (17, 3, N'nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', CAST(N'2024-07-17T16:27:28.0000000' AS DateTime2), N'http://list-manage.com/orci/luctus/et/ultrices.json?aliquam=amet&lacus=consectetuer&morbi=adipiscing&quis=elit&tortor=proin&id=interdum&nulla=mauris&ultrices=non&aliquet=ligula&maecenas=pellentesque&leo=ultrices&odio=phasellus&condimentum=id&id=sapien&luctus=in&nec=sapien&molestie=iaculis&sed=congue&justo=vivamus&pellentesque=metus&viverra=arcu&pede=adipiscing&ac=molestie&diam=hendrerit&cras=at&pellentesque=vulputate&volutpat=vitae&dui=nisl&maecenas=aenean&tristique=lectus&est=pellentesque&et=eget&tempus=nunc&semper=donec&est=quis&quam=orci&pharetra=eget&magna=orci&ac=vehicula&consequat=condimentum&metus=curabitur&sapien=in&ut=libero&nunc=ut&vestibulum=massa&ante=volutpat&ipsum=convallis&primis=morbi&in=odio&faucibus=odio&orci=elementum&luctus=eu&et=interdum&ultrices=eu&posuere=tincidunt&cubilia=in&curae=leo&mauris=maecenas&viverra=pulvinar&diam=lobortis&vitae=est&quam=phasellus&suspendisse=sit&potenti=amet&nullam=erat&porttitor=nulla&lacus=tempus&at=vivamus&turpis=in&donec=felis&posuere=eu&metus=sapien&vitae=cursus&ipsum=vestibulum&aliquam=proin&non=eu&mauris=mi&morbi=nulla&non=ac&lectus=enim&aliquam=in&sit=tempor&amet=turpis&diam=nec&in=euismod&magna=scelerisque&bibendum=quam&imperdiet=turpis&nullam=adipiscing&orci=lorem&pede=vitae&venenatis=mattis', N'Advanced')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (18, 9, N'ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices', N'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', CAST(N'2023-01-27T03:31:27.0000000' AS DateTime2), N'http://ifeng.com/non/ligula/pellentesque/ultrices.html?enim=volutpat&lorem=erat&ipsum=quisque&dolor=erat&sit=eros&amet=viverra&consectetuer=eget&adipiscing=congue&elit=eget&proin=semper&interdum=rutrum&mauris=nulla&non=nunc&ligula=purus&pellentesque=phasellus&ultrices=in&phasellus=felis&id=donec&sapien=semper&in=sapien&sapien=a&iaculis=libero&congue=nam&vivamus=dui&metus=proin&arcu=leo&adipiscing=odio&molestie=porttitor&hendrerit=id&at=consequat&vulputate=in&vitae=consequat&nisl=ut&aenean=nulla&lectus=sed&pellentesque=accumsan&eget=felis', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (19, 6, N'tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu', N'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', CAST(N'2023-11-01T19:08:59.0000000' AS DateTime2), N'https://dion.ne.jp/ut/nulla/sed/accumsan/felis/ut.html?a=sapien&suscipit=sapien&nulla=non&elit=mi&ac=integer&nulla=ac&sed=neque&vel=duis&enim=bibendum&sit=morbi&amet=non&nunc=quam&viverra=nec&dapibus=dui&nulla=luctus&suscipit=rutrum&ligula=nulla&in=tellus&lacus=in&curabitur=sagittis&at=dui&ipsum=vel&ac=nisl&tellus=duis&semper=ac&interdum=nibh&mauris=fusce&ullamcorper=lacus&purus=purus&sit=aliquet&amet=at&nulla=feugiat&quisque=non&arcu=pretium&libero=quis&rutrum=lectus&ac=suspendisse&lobortis=potenti&vel=in&dapibus=eleifend&at=quam&diam=a&nam=odio&tristique=in&tortor=hac&eu=habitasse&pede=platea', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (20, 6, N'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque', N'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', CAST(N'2023-09-23T00:02:59.0000000' AS DateTime2), N'http://godaddy.com/est/lacinia/nisi/venenatis.png?at=integer&velit=tincidunt&vivamus=ante&vel=vel&nulla=ipsum&eget=praesent&eros=blandit&elementum=lacinia&pellentesque=erat&quisque=vestibulum&porta=sed&volutpat=magna&erat=at&quisque=nunc&erat=commodo&eros=placerat&viverra=praesent&eget=blandit&congue=nam&eget=nulla&semper=integer&rutrum=pede&nulla=justo&nunc=lacinia&purus=eget&phasellus=tincidunt&in=eget&felis=tempus&donec=vel&semper=pede&sapien=morbi&a=porttitor&libero=lorem&nam=id&dui=ligula&proin=suspendisse&leo=ornare&odio=consequat&porttitor=lectus&id=in&consequat=est&in=risus&consequat=auctor&ut=sed&nulla=tristique', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (21, 2, N'luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh', N'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', CAST(N'2023-10-04T22:10:55.0000000' AS DateTime2), N'https://sogou.com/consequat/metus/sapien/ut/nunc/vestibulum.jpg?donec=porttitor&dapibus=pede&duis=justo&at=eu&velit=massa&eu=donec&est=dapibus&congue=duis&elementum=at&in=velit&hac=eu&habitasse=est&platea=congue&dictumst=elementum&morbi=in&vestibulum=hac&velit=habitasse&id=platea&pretium=dictumst&iaculis=morbi&diam=vestibulum&erat=velit&fermentum=id&justo=pretium&nec=iaculis&condimentum=diam&neque=erat&sapien=fermentum&placerat=justo&ante=nec&nulla=condimentum&justo=neque&aliquam=sapien&quis=placerat&turpis=ante&eget=nulla&elit=justo&sodales=aliquam&scelerisque=quis&mauris=turpis&sit=eget&amet=elit&eros=sodales&suspendisse=scelerisque&accumsan=mauris&tortor=sit&quis=amet&turpis=eros&sed=suspendisse&ante=accumsan&vivamus=tortor&tortor=quis&duis=turpis&mattis=sed&egestas=ante&metus=vivamus&aenean=tortor&fermentum=duis&donec=mattis', N'Advanced')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (22, 9, N'quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', CAST(N'2023-11-23T08:29:21.0000000' AS DateTime2), N'http://intel.com/eu/sapien/cursus/vestibulum/proin.json?habitasse=aliquam&platea=erat&dictumst=volutpat&aliquam=in&augue=congue&quam=etiam&sollicitudin=justo&vitae=etiam&consectetuer=pretium&eget=iaculis&rutrum=justo&at=in&lorem=hac&integer=habitasse&tincidunt=platea&ante=dictumst&vel=etiam&ipsum=faucibus&praesent=cursus&blandit=urna&lacinia=ut&erat=tellus&vestibulum=nulla&sed=ut&magna=erat&at=id&nunc=mauris&commodo=vulputate&placerat=elementum&praesent=nullam&blandit=varius&nam=nulla&nulla=facilisi&integer=cras&pede=non', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (23, 3, N'vel nisl duis ac nibh fusce lacus purus aliquet at', N'Phasellus in felis. Donec semper sapien a libero. Nam dui.', CAST(N'2024-08-21T00:33:33.0000000' AS DateTime2), N'https://hao123.com/blandit/nam/nulla/integer/pede.xml?morbi=vestibulum&vel=ante&lectus=ipsum&in=primis&quam=in&fringilla=faucibus&rhoncus=orci&mauris=luctus&enim=et&leo=ultrices&rhoncus=posuere&sed=cubilia&vestibulum=curae&sit=duis&amet=faucibus&cursus=accumsan&id=odio&turpis=curabitur&integer=convallis&aliquet=duis&massa=consequat&id=dui&lobortis=nec&convallis=nisi&tortor=volutpat&risus=eleifend&dapibus=donec&augue=ut&vel=dolor&accumsan=morbi&tellus=vel&nisi=lectus&eu=in&orci=quam&mauris=fringilla&lacinia=rhoncus&sapien=mauris&quis=enim&libero=leo&nullam=rhoncus&sit=sed&amet=vestibulum&turpis=sit&elementum=amet&ligula=cursus&vehicula=id&consequat=turpis&morbi=integer&a=aliquet&ipsum=massa&integer=id&a=lobortis&nibh=convallis&in=tortor&quis=risus&justo=dapibus&maecenas=augue&rhoncus=vel&aliquam=accumsan&lacus=tellus&morbi=nisi&quis=eu&tortor=orci&id=mauris&nulla=lacinia&ultrices=sapien', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (24, 9, N'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', CAST(N'2023-03-05T14:55:12.0000000' AS DateTime2), N'http://loc.gov/phasellus/sit/amet/erat/nulla.aspx?ac=sociis&est=natoque&lacinia=penatibus&nisi=et&venenatis=magnis&tristique=dis&fusce=parturient&congue=montes&diam=nascetur&id=ridiculus&ornare=mus&imperdiet=vivamus&sapien=vestibulum&urna=sagittis&pretium=sapien&nisl=cum&ut=sociis&volutpat=natoque&sapien=penatibus&arcu=et&sed=magnis&augue=dis&aliquam=parturient&erat=montes&volutpat=nascetur&in=ridiculus&congue=mus&etiam=etiam&justo=vel&etiam=augue&pretium=vestibulum&iaculis=rutrum&justo=rutrum&in=neque&hac=aenean&habitasse=auctor&platea=gravida&dictumst=sem&etiam=praesent&faucibus=id&cursus=massa&urna=id&ut=nisl&tellus=venenatis&nulla=lacinia&ut=aenean&erat=sit&id=amet&mauris=justo&vulputate=morbi&elementum=ut&nullam=odio&varius=cras&nulla=mi&facilisi=pede&cras=malesuada&non=in&velit=imperdiet&nec=et&nisi=commodo&vulputate=vulputate&nonummy=justo&maecenas=in&tincidunt=blandit&lacus=ultrices&at=enim&velit=lorem&vivamus=ipsum&vel=dolor&nulla=sit&eget=amet&eros=consectetuer&elementum=adipiscing&pellentesque=elit&quisque=proin&porta=interdum', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (25, 1, N'et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', CAST(N'2024-10-23T07:50:50.0000000' AS DateTime2), N'http://barnesandnoble.com/penatibus/et/magnis/dis.aspx?sed=odio&ante=condimentum&vivamus=id&tortor=luctus&duis=nec&mattis=molestie&egestas=sed&metus=justo&aenean=pellentesque&fermentum=viverra&donec=pede&ut=ac&mauris=diam&eget=cras&massa=pellentesque&tempor=volutpat&convallis=dui&nulla=maecenas&neque=tristique&libero=est&convallis=et&eget=tempus&eleifend=semper&luctus=est&ultricies=quam&eu=pharetra&nibh=magna&quisque=ac&id=consequat&justo=metus&sit=sapien&amet=ut&sapien=nunc&dignissim=vestibulum&vestibulum=ante&vestibulum=ipsum&ante=primis&ipsum=in', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (26, 9, N'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque', N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', CAST(N'2024-01-12T00:30:52.0000000' AS DateTime2), N'https://flavors.me/nulla/ultrices/aliquet/maecenas/leo/odio.jpg?quisque=in&id=tempus&justo=sit&sit=amet&amet=sem&sapien=fusce&dignissim=consequat&vestibulum=nulla&vestibulum=nisl&ante=nunc&ipsum=nisl&primis=duis&in=bibendum&faucibus=felis&orci=sed&luctus=interdum&et=venenatis&ultrices=turpis&posuere=enim&cubilia=blandit&curae=mi&nulla=in&dapibus=porttitor&dolor=pede&vel=justo&est=eu&donec=massa&odio=donec&justo=dapibus&sollicitudin=duis&ut=at&suscipit=velit&a=eu&feugiat=est&et=congue&eros=elementum&vestibulum=in&ac=hac&est=habitasse&lacinia=platea&nisi=dictumst&venenatis=morbi&tristique=vestibulum&fusce=velit&congue=id&diam=pretium&id=iaculis', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (27, 2, N'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', CAST(N'2024-05-24T05:47:13.0000000' AS DateTime2), N'http://auda.org.au/amet/nulla/quisque/arcu/libero/rutrum/ac.js?posuere=libero&nonummy=quis&integer=orci&non=nullam&velit=molestie&donec=nibh&diam=in&neque=lectus&vestibulum=pellentesque&eget=at', N'Intermediate')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (28, 1, N'mi integer ac neque duis bibendum morbi non quam nec dui luctus', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', CAST(N'2023-09-28T10:49:17.0000000' AS DateTime2), N'http://typepad.com/ridiculus/mus.js?sollicitudin=blandit&vitae=ultrices&consectetuer=enim&eget=lorem&rutrum=ipsum&at=dolor&lorem=sit&integer=amet&tincidunt=consectetuer&ante=adipiscing&vel=elit&ipsum=proin&praesent=interdum&blandit=mauris&lacinia=non&erat=ligula&vestibulum=pellentesque&sed=ultrices&magna=phasellus&at=id&nunc=sapien&commodo=in&placerat=sapien&praesent=iaculis&blandit=congue&nam=vivamus&nulla=metus&integer=arcu&pede=adipiscing&justo=molestie&lacinia=hendrerit&eget=at&tincidunt=vulputate&eget=vitae&tempus=nisl&vel=aenean&pede=lectus&morbi=pellentesque&porttitor=eget&lorem=nunc&id=donec&ligula=quis&suspendisse=orci&ornare=eget&consequat=orci&lectus=vehicula&in=condimentum&est=curabitur&risus=in&auctor=libero&sed=ut&tristique=massa&in=volutpat&tempus=convallis&sit=morbi&amet=odio&sem=odio&fusce=elementum&consequat=eu&nulla=interdum&nisl=eu&nunc=tincidunt&nisl=in&duis=leo&bibendum=maecenas&felis=pulvinar&sed=lobortis&interdum=est', N'Advanced')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (29, 10, N'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', N'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', CAST(N'2024-09-26T21:13:43.0000000' AS DateTime2), N'https://biblegateway.com/orci/luctus/et.aspx?sem=turpis&duis=elementum&aliquam=ligula&convallis=vehicula&nunc=consequat&proin=morbi&at=a&turpis=ipsum&a=integer&pede=a&posuere=nibh&nonummy=in&integer=quis&non=justo&velit=maecenas&donec=rhoncus&diam=aliquam&neque=lacus&vestibulum=morbi&eget=quis&vulputate=tortor&ut=id&ultrices=nulla&vel=ultrices&augue=aliquet&vestibulum=maecenas&ante=leo&ipsum=odio&primis=condimentum&in=id&faucibus=luctus&orci=nec&luctus=molestie&et=sed&ultrices=justo&posuere=pellentesque&cubilia=viverra&curae=pede&donec=ac&pharetra=diam&magna=cras&vestibulum=pellentesque&aliquet=volutpat&ultrices=dui&erat=maecenas&tortor=tristique&sollicitudin=est&mi=et&sit=tempus&amet=semper&lobortis=est&sapien=quam&sapien=pharetra&non=magna&mi=ac&integer=consequat&ac=metus&neque=sapien&duis=ut&bibendum=nunc&morbi=vestibulum&non=ante&quam=ipsum&nec=primis', N'Beginner')
INSERT [dbo].[Lessons] ([LessonId], [CourseId], [LessonTitle], [Content], [CreatedAt], [Link], [Level]) VALUES (30, 5, N'nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', CAST(N'2023-03-22T20:57:44.0000000' AS DateTime2), N'http://booking.com/ullamcorper.jpg?id=sit&nulla=amet&ultrices=diam&aliquet=in&maecenas=magna&leo=bibendum&odio=imperdiet&condimentum=nullam&id=orci&luctus=pede&nec=venenatis&molestie=non&sed=sodales&justo=sed&pellentesque=tincidunt&viverra=eu&pede=felis&ac=fusce&diam=posuere&cras=felis&pellentesque=sed&volutpat=lacus&dui=morbi&maecenas=sem&tristique=mauris&est=laoreet&et=ut&tempus=rhoncus&semper=aliquet&est=pulvinar&quam=sed&pharetra=nisl&magna=nunc&ac=rhoncus&consequat=dui&metus=vel&sapien=sem&ut=sed&nunc=sagittis&vestibulum=nam&ante=congue&ipsum=risus&primis=semper&in=porta&faucibus=volutpat&orci=quam&luctus=pede&et=lobortis&ultrices=ligula&posuere=sit&cubilia=amet&curae=eleifend&mauris=pede&viverra=libero', N'Beginner')
SET IDENTITY_INSERT [dbo].[Lessons] OFF
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (1, N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', N'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', N'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', N'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (2, N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', N'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', N'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', N'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', N'In congue. Etiam justo. Etiam pretium iaculis justo.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (3, N'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', N'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', N'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', N'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (4, N'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', N'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (5, N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', N'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', N'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (6, N'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', N'Fusce consequat. Nulla nisl. Nunc nisl.', N'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (7, N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', N'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', N'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', N'Fusce consequat. Nulla nisl. Nunc nisl.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (8, N'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', N'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (9, N'In congue. Etiam justo. Etiam pretium iaculis justo.', N'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (10, N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', N'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', N'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', N'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (11, N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (12, N'Fusce consequat. Nulla nisl. Nunc nisl.', N'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', N'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', N'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (13, N'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (14, N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', N'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (15, N'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', N'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (16, N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', N'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (17, N'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', N'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (18, N'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', N'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', N'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', N'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (19, N'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', N'In congue. Etiam justo. Etiam pretium iaculis justo.', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (20, N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (21, N'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', N'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', N'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (22, N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', N'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', N'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (23, N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', N'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (24, N'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'Fusce consequat. Nulla nisl. Nunc nisl.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (25, N'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', N'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', N'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', N'Fusce consequat. Nulla nisl. Nunc nisl.', N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (26, N'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', N'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', N'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (27, N'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', N'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', N'Phasellus in felis. Donec semper sapien a libero. Nam dui.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (28, N'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', N'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', N'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', N'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (29, N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', N'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (30, N'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', N'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', N'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (31, N'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', N'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', N'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', N'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', N'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (32, N'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'Phasellus in felis. Donec semper sapien a libero. Nam dui.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (33, N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (34, N'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', N'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', N'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', N'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (35, N'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (36, N'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', N'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (37, N'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', N'In congue. Etiam justo. Etiam pretium iaculis justo.', N'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (38, N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', N'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', N'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (39, N'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', N'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', N'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', N'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', N'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (40, N'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', N'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', N'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', N'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (41, N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', N'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', N'In congue. Etiam justo. Etiam pretium iaculis justo.', N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (42, N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', N'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', N'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (43, N'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', N'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', N'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (44, N'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', N'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', N'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (45, N'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', N'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', N'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (46, N'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', N'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', N'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', N'In congue. Etiam justo. Etiam pretium iaculis justo.', N'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (47, N'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', N'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', N'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (48, N'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', N'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', N'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (49, N'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', N'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'In congue. Etiam justo. Etiam pretium iaculis justo.', N'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', N'')
INSERT [dbo].[Questions] ([Qid], [QContent], [Opt1], [Opt2], [Opt3], [Opt4], [Correctans]) VALUES (50, N'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', N'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', N'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', N'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'')
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('cf43bb08-b822-4504-9ac3-7aa90627de4a', 1, '2024-02-15T17:48:17');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('cf43bb08-b822-4504-9ac3-7aa90627de4a', 2, '2024-11-10T02:15:44');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('cf43bb08-b822-4504-9ac3-7aa90627de4a', 3, '2024-04-19T18:37:32');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('cf43bb08-b822-4504-9ac3-7aa90627de4a', 4, '2024-12-30T22:30:13');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('cf43bb08-b822-4504-9ac3-7aa90627de4a', 5, '2024-08-15T11:36:26');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('cf43bb08-b822-4504-9ac3-7aa90627de4a', 6, '2024-01-01T06:53:22');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('cf43bb08-b822-4504-9ac3-7aa90627de4a', 7, '2024-09-12T14:43:43');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('cf43bb08-b822-4504-9ac3-7aa90627de4a', 8, '2024-12-19T05:16:28');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('cf43bb08-b822-4504-9ac3-7aa90627de4a', 9, '2024-02-10T22:23:50');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('cf43bb08-b822-4504-9ac3-7aa90627de4a', 10, '2024-05-05T14:49:37');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('19782963-c520-43a6-94f8-b755c095f940', 1, '2024-11-12T10:11:01');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('19782963-c520-43a6-94f8-b755c095f940', 2, '2024-01-19T18:14:42');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('19782963-c520-43a6-94f8-b755c095f940', 3, '2024-05-07T15:41:13');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('19782963-c520-43a6-94f8-b755c095f940', 4, '2024-10-19T22:16:27');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('19782963-c520-43a6-94f8-b755c095f940', 5, '2024-12-25T02:43:03');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('19782963-c520-43a6-94f8-b755c095f940', 6, '2024-05-18T08:35:02');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('19782963-c520-43a6-94f8-b755c095f940', 7, '2024-07-29T04:40:59');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('19782963-c520-43a6-94f8-b755c095f940', 8, '2024-01-22T09:43:24');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('19782963-c520-43a6-94f8-b755c095f940', 9, '2024-01-06T05:35:45');
insert into Enrollments (UserId, CourseId, EnrolledAt) values ('19782963-c520-43a6-94f8-b755c095f940', 10, '2024-10-12T07:02:23');
GO
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (1, '19782963-c520-43a6-94f8-b755c095f940', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '10/20/2002 20:44:27.000', 22.08);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (2, '19782963-c520-43a6-94f8-b755c095f940', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '9/25/1931 11:51:34.000', 94.3);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (3, '19782963-c520-43a6-94f8-b755c095f940', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '9/1/1918 20:40:21.000', 98.13);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (4, '19782963-c520-43a6-94f8-b755c095f940', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '3/13/2019 11:33:51.000', 45.56);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (5, '19782963-c520-43a6-94f8-b755c095f940', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '8/26/2020 23:26:16.000', 60.53);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (6, '19782963-c520-43a6-94f8-b755c095f940', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '4/1/1979 15:48:21.000', 3.2);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (7, '19782963-c520-43a6-94f8-b755c095f940', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '11/23/1917 20:18:19.000', 36.32);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (8, '19782963-c520-43a6-94f8-b755c095f940', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '6/30/1919 10:12:46.000', 40.62);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (9, '19782963-c520-43a6-94f8-b755c095f940', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '11/28/1918 21:47:42.000', 20.3);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (10, '19782963-c520-43a6-94f8-b755c095f940', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '1/20/1959 05:00:54.000', 34.22);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (11, '19782963-c520-43a6-94f8-b755c095f940', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '6/18/1984 13:06:36.000', 93.11);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (12, '19782963-c520-43a6-94f8-b755c095f940', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '5/8/1963 21:35:33.000', 68.18);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (13, '19782963-c520-43a6-94f8-b755c095f940', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '9/5/1979 10:18:21.000', 84.36);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (14, '19782963-c520-43a6-94f8-b755c095f940', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '10/8/2019 12:32:46.000', 50.54);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (15, '19782963-c520-43a6-94f8-b755c095f940', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '3/8/1915 07:14:58.000', 81.72);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (16, '19782963-c520-43a6-94f8-b755c095f940', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '7/18/1959 22:45:24.000', 73.38);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (17, '19782963-c520-43a6-94f8-b755c095f940', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '6/20/1998 06:34:00.000', 23.96);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (18, '19782963-c520-43a6-94f8-b755c095f940', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '10/11/1952 11:54:14.000', 69.12);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (19, '19782963-c520-43a6-94f8-b755c095f940', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '9/16/1971 04:38:19.000', 92.17);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (20, '19782963-c520-43a6-94f8-b755c095f940', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2/13/1926 04:15:34.000', 48.81);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (1, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '8/3/2007 19:59:48.000', 20.57);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (2, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '12/24/1957 11:13:12.000', 21.11);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (3, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '8/11/2019 17:09:30.000', 37.17);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (4, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '1/5/1989 17:07:45.000', 23.86);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (5, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '8/27/1922 19:17:20.000', 76.73);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (6, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '4/28/1931 08:34:22.000', 19.76);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (7, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '10/9/1926 01:57:39.000', 15.4);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (8, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '2/21/1940 19:22:03.000', 93.32);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (9, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '9/29/1980 06:31:34.000', 30.4);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (10, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '6/17/1958 06:54:36.000', 76.74);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (11, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '11/18/2022 05:14:56.000', 63.0);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (12, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '1/18/1907 04:58:45.000', 79.19);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (13, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '12/5/1970 13:11:11.000', 28.61);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (14, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '6/2/1908 06:25:11.000', 37.73);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (15, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '10/19/1944 14:20:21.000', 54.03);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (16, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '7/16/1986 15:31:44.000', 75.01);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (17, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '6/24/2003 13:30:11.000', 97.55);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (18, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '7/29/1907 12:16:55.000', 63.23);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (19, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '3/5/1987 19:40:33.000', 75.27);
insert into Submissions (AssignmentId, UserId, Content, SubmittedAt, Grade) values (20, 'cf43bb08-b822-4504-9ac3-7aa90627de4a', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '3/25/1906 20:18:54.000', 68.49);
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/21/2024 3:03:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/21/2024 3:03:43 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/21/2024 3:03:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/21/2024 3:03:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/21/2024 3:03:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/21/2024 3:03:43 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/21/2024 3:03:43 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AssignmentQuestion_QuestionId]    Script Date: 7/21/2024 3:03:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_AssignmentQuestion_QuestionId] ON [dbo].[AssignmentQuestion]
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Assignments_CourseId]    Script Date: 7/21/2024 3:03:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Assignments_CourseId] ON [dbo].[Assignments]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Courses_InstructorId]    Script Date: 7/21/2024 3:03:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Courses_InstructorId] ON [dbo].[Courses]
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Enrollments_CourseId]    Script Date: 7/21/2024 3:03:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Enrollments_CourseId] ON [dbo].[Enrollments]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Enrollments_UserId]    Script Date: 7/21/2024 3:03:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Enrollments_UserId] ON [dbo].[Enrollments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Lessons_CourseId]    Script Date: 7/21/2024 3:03:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Lessons_CourseId] ON [dbo].[Lessons]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Parents_StudentId]    Script Date: 7/21/2024 3:03:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Parents_StudentId] ON [dbo].[Parents]
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Submissions_AssignmentId]    Script Date: 7/21/2024 3:03:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Submissions_AssignmentId] ON [dbo].[Submissions]
(
	[AssignmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Submissions_UserId]    Script Date: 7/21/2024 3:03:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Submissions_UserId] ON [dbo].[Submissions]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
