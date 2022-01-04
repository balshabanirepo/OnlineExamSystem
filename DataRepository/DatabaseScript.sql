USE [master]
GO
/****** Object:  Database [OnlineExamSystem]    Script Date: 04-Jan-2022 9:48:17 AM ******/
CREATE DATABASE [OnlineExamSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnlineExamSystem', FILENAME = N'C:\Users\balshabani\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\OnlineExamSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OnlineExamSystem_log', FILENAME = N'C:\Users\balshabani\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\OnlineExamSystem.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [OnlineExamSystem] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineExamSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OnlineExamSystem] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [OnlineExamSystem] SET ANSI_NULLS ON 
GO
ALTER DATABASE [OnlineExamSystem] SET ANSI_PADDING ON 
GO
ALTER DATABASE [OnlineExamSystem] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [OnlineExamSystem] SET ARITHABORT ON 
GO
ALTER DATABASE [OnlineExamSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OnlineExamSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OnlineExamSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OnlineExamSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OnlineExamSystem] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [OnlineExamSystem] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [OnlineExamSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OnlineExamSystem] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [OnlineExamSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OnlineExamSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OnlineExamSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OnlineExamSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OnlineExamSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OnlineExamSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OnlineExamSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OnlineExamSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OnlineExamSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OnlineExamSystem] SET RECOVERY FULL 
GO
ALTER DATABASE [OnlineExamSystem] SET  MULTI_USER 
GO
ALTER DATABASE [OnlineExamSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OnlineExamSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OnlineExamSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OnlineExamSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OnlineExamSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OnlineExamSystem] SET QUERY_STORE = OFF
GO
USE [OnlineExamSystem]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [OnlineExamSystem]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 04-Jan-2022 9:48:17 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 04-Jan-2022 9:48:17 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 04-Jan-2022 9:48:17 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 04-Jan-2022 9:48:17 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 04-Jan-2022 9:48:17 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 04-Jan-2022 9:48:17 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 04-Jan-2022 9:48:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 04-Jan-2022 9:48:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttachmentData]    Script Date: 04-Jan-2022 9:48:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttachmentData](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Data] [varbinary](max) NULL,
 CONSTRAINT [PK_AttachmentData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attachments]    Script Date: 04-Jan-2022 9:48:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attachments](
	[Id] [uniqueidentifier] NOT NULL,
	[FileName] [nvarchar](max) NULL,
	[FilePath] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[AttachmentCategoryId] [int] NULL,
	[AttachmentTypeId] [int] NULL,
	[AttachmentDataId] [int] NOT NULL,
	[AttachmentObjectTypeId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ObjectId] [int] NOT NULL,
 CONSTRAINT [PK_Attachments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DifficultyLevels]    Script Date: 04-Jan-2022 9:48:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DifficultyLevels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DifficultyLevelName] [nvarchar](max) NULL,
 CONSTRAINT [PK_DifficultyLevels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 04-Jan-2022 9:48:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExamTypeId] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamQuestions]    Script Date: 04-Jan-2022 9:48:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamQuestions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExamId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
 CONSTRAINT [PK_ExamQuestions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamTypes]    Script Date: 04-Jan-2022 9:48:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExamTypeName] [nvarchar](max) NULL,
	[DifficultyLevelId] [int] NOT NULL,
	[NumberOfQuestions] [int] NOT NULL,
 CONSTRAINT [PK_ExamTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamTypesDetails]    Script Date: 04-Jan-2022 9:48:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamTypesDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DifficultyLevelId] [int] NOT NULL,
	[ExamTypeId] [int] NOT NULL,
	[NumberOfQuestions] [int] NOT NULL,
 CONSTRAINT [PK_ExamTypesDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionAnswers]    Script Date: 04-Jan-2022 9:48:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionAnswers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[AnswerText] [nvarchar](max) NULL,
	[IsCorrect] [bit] NOT NULL,
 CONSTRAINT [PK_QuestionAnswers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 04-Jan-2022 9:48:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionText] [nvarchar](max) NULL,
	[DifficultyLevelId] [int] NOT NULL,
	[SubjectId] [int] NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 04-Jan-2022 9:48:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211018062919_m1', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211219114055_m', N'3.1.5')
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1, N'246F4FCD-3829-444D-84A4-CA2C3AFE04D0', N'userId', N'246F4FCD-3829-444D-84A4-CA2C3AFE04D0')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2, N'246F4FCD-3829-444D-84A4-CA2C3AFE04D0', N'userId', N'246F4FCD-3829-444D-84A4-CA2C3AFE04D0')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3, N'246F4FCD-3829-444D-84A4-CA2C3AFE04D0', N'userId', N'246F4FCD-3829-444D-84A4-CA2C3AFE04D0')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4, N'246F4FCD-3829-444D-84A4-CA2C3AFE04D0', N'userId', N'246F4FCD-3829-444D-84A4-CA2C3AFE04D0')
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'246F4FCD-3829-444D-84A4-CA2C3AFE04D0', N'w.sabbagh@shac.gov.wa', N'W.SABBAGH@SHAC.GOV.WA', N'W.SABBAGH@SHAC.GOV.WA', N'W.SABBAGH@SHAC.GOV.WA', 0, N'AQAAAAEAACcQAAAAEMNMRmP/SNF4x8iILaOeA54h4+q4zBmKpxvI107AKXSlxtAnz7gh81fiLtmR8f+C5Q==', N'7cb6cf76-7eee-409d-8324-85ad43b0ee17', N'1b470066-1416-4012-9210-10ecf9930ece', N'0504222568', 1, 0, NULL, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[DifficultyLevels] ON 
GO
INSERT [dbo].[DifficultyLevels] ([Id], [DifficultyLevelName]) VALUES (3, N'Easy')
GO
INSERT [dbo].[DifficultyLevels] ([Id], [DifficultyLevelName]) VALUES (4, N'Intermediate')
GO
SET IDENTITY_INSERT [dbo].[DifficultyLevels] OFF
GO
SET IDENTITY_INSERT [dbo].[Exam] ON 
GO
INSERT [dbo].[Exam] ([Id], [ExamTypeId], [CreatedAt]) VALUES (1, 2, CAST(N'2022-01-04T09:43:40.2200000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Exam] OFF
GO
SET IDENTITY_INSERT [dbo].[ExamQuestions] ON 
GO
INSERT [dbo].[ExamQuestions] ([Id], [ExamId], [QuestionId]) VALUES (1, 1, 6)
GO
INSERT [dbo].[ExamQuestions] ([Id], [ExamId], [QuestionId]) VALUES (2, 1, 7)
GO
SET IDENTITY_INSERT [dbo].[ExamQuestions] OFF
GO
SET IDENTITY_INSERT [dbo].[ExamTypes] ON 
GO
INSERT [dbo].[ExamTypes] ([Id], [ExamTypeName], [DifficultyLevelId], [NumberOfQuestions]) VALUES (2, N'Intermediate', 4, 2)
GO
SET IDENTITY_INSERT [dbo].[ExamTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[ExamTypesDetails] ON 
GO
INSERT [dbo].[ExamTypesDetails] ([Id], [DifficultyLevelId], [ExamTypeId], [NumberOfQuestions]) VALUES (2, 3, 2, 1)
GO
INSERT [dbo].[ExamTypesDetails] ([Id], [DifficultyLevelId], [ExamTypeId], [NumberOfQuestions]) VALUES (3, 4, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[ExamTypesDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[QuestionAnswers] ON 
GO
INSERT [dbo].[QuestionAnswers] ([Id], [QuestionId], [AnswerText], [IsCorrect]) VALUES (36, 6, N'–20 °C ', 0)
GO
INSERT [dbo].[QuestionAnswers] ([Id], [QuestionId], [AnswerText], [IsCorrect]) VALUES (37, 6, N'+12 °C ', 0)
GO
INSERT [dbo].[QuestionAnswers] ([Id], [QuestionId], [AnswerText], [IsCorrect]) VALUES (38, 6, N'+42 °C ', 0)
GO
INSERT [dbo].[QuestionAnswers] ([Id], [QuestionId], [AnswerText], [IsCorrect]) VALUES (39, 6, N' –12 °C ', 1)
GO
INSERT [dbo].[QuestionAnswers] ([Id], [QuestionId], [AnswerText], [IsCorrect]) VALUES (40, 6, N'+20 °C ', 0)
GO
INSERT [dbo].[QuestionAnswers] ([Id], [QuestionId], [AnswerText], [IsCorrect]) VALUES (41, 7, N' 2.00×106  ', 0)
GO
INSERT [dbo].[QuestionAnswers] ([Id], [QuestionId], [AnswerText], [IsCorrect]) VALUES (42, 7, N' 1.05×106', 1)
GO
INSERT [dbo].[QuestionAnswers] ([Id], [QuestionId], [AnswerText], [IsCorrect]) VALUES (43, 7, N' 5.50×106 ', 0)
GO
INSERT [dbo].[QuestionAnswers] ([Id], [QuestionId], [AnswerText], [IsCorrect]) VALUES (44, 7, N'2.35×106', 0)
GO
INSERT [dbo].[QuestionAnswers] ([Id], [QuestionId], [AnswerText], [IsCorrect]) VALUES (45, 7, N' 1.52×107', 0)
GO
SET IDENTITY_INSERT [dbo].[QuestionAnswers] OFF
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 
GO
INSERT [dbo].[Questions] ([Id], [QuestionText], [DifficultyLevelId], [SubjectId]) VALUES (6, N'Consider a copper slab of thickness 19 cm and cross sectional area 5.0 m2 . Heat is conducted from the left to the right of the slab at a rate of 1.2 MW. If the temperature on the left of the slab is 102 °C, what is the temperature on the right of the slab? (The thermal conductivity of copper is 400 W/m∙K) ', 3, 1)
GO
INSERT [dbo].[Questions] ([Id], [QuestionText], [DifficultyLevelId], [SubjectId]) VALUES (7, N'When 200 W is supplied continuously to an isolated object of mass 0.400 kg, its phase changes from solid to liquid, and finally to gas as shown in the figure. What is the latent heat of vaporization, in J/kg, of the object?', 4, 1)
GO
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON 
GO
INSERT [dbo].[Subjects] ([Id], [SubjectName]) VALUES (1, N'phys102')
GO
SET IDENTITY_INSERT [dbo].[Subjects] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 04-Jan-2022 9:48:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 04-Jan-2022 9:48:18 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 04-Jan-2022 9:48:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 04-Jan-2022 9:48:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 04-Jan-2022 9:48:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 04-Jan-2022 9:48:18 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 04-Jan-2022 9:48:18 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Attachments_AttachmentDataId]    Script Date: 04-Jan-2022 9:48:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_Attachments_AttachmentDataId] ON [dbo].[Attachments]
(
	[AttachmentDataId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Exam_ExamTypeId]    Script Date: 04-Jan-2022 9:48:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_Exam_ExamTypeId] ON [dbo].[Exam]
(
	[ExamTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExamQuestions_ExamId]    Script Date: 04-Jan-2022 9:48:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_ExamQuestions_ExamId] ON [dbo].[ExamQuestions]
(
	[ExamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExamQuestions_QuestionId]    Script Date: 04-Jan-2022 9:48:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_ExamQuestions_QuestionId] ON [dbo].[ExamQuestions]
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExamTypes_DifficultyLevelId]    Script Date: 04-Jan-2022 9:48:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_ExamTypes_DifficultyLevelId] ON [dbo].[ExamTypes]
(
	[DifficultyLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExamTypesDetails_DifficultyLevelId]    Script Date: 04-Jan-2022 9:48:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_ExamTypesDetails_DifficultyLevelId] ON [dbo].[ExamTypesDetails]
(
	[DifficultyLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_QuestionAnswers_QuestionId]    Script Date: 04-Jan-2022 9:48:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_QuestionAnswers_QuestionId] ON [dbo].[QuestionAnswers]
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Questions_DifficultyLevelId]    Script Date: 04-Jan-2022 9:48:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_Questions_DifficultyLevelId] ON [dbo].[Questions]
(
	[DifficultyLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Questions_SubjectId]    Script Date: 04-Jan-2022 9:48:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_Questions_SubjectId] ON [dbo].[Questions]
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Attachments]  WITH CHECK ADD  CONSTRAINT [FK_Attachments_AttachmentData_AttachmentDataId] FOREIGN KEY([AttachmentDataId])
REFERENCES [dbo].[AttachmentData] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Attachments] CHECK CONSTRAINT [FK_Attachments_AttachmentData_AttachmentDataId]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_ExamTypes_ExamTypeId] FOREIGN KEY([ExamTypeId])
REFERENCES [dbo].[ExamTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_ExamTypes_ExamTypeId]
GO
ALTER TABLE [dbo].[ExamQuestions]  WITH CHECK ADD  CONSTRAINT [FK_ExamQuestions_Exam_ExamId] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExamQuestions] CHECK CONSTRAINT [FK_ExamQuestions_Exam_ExamId]
GO
ALTER TABLE [dbo].[ExamQuestions]  WITH CHECK ADD  CONSTRAINT [FK_ExamQuestions_Questions_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([Id])
GO
ALTER TABLE [dbo].[ExamQuestions] CHECK CONSTRAINT [FK_ExamQuestions_Questions_QuestionId]
GO
ALTER TABLE [dbo].[ExamTypes]  WITH CHECK ADD  CONSTRAINT [FK_ExamTypes_DifficultyLevels_DifficultyLevelId] FOREIGN KEY([DifficultyLevelId])
REFERENCES [dbo].[DifficultyLevels] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExamTypes] CHECK CONSTRAINT [FK_ExamTypes_DifficultyLevels_DifficultyLevelId]
GO
ALTER TABLE [dbo].[ExamTypesDetails]  WITH CHECK ADD  CONSTRAINT [FK_ExamTypesDetails_DifficultyLevels_DifficultyLevelId] FOREIGN KEY([DifficultyLevelId])
REFERENCES [dbo].[DifficultyLevels] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExamTypesDetails] CHECK CONSTRAINT [FK_ExamTypesDetails_DifficultyLevels_DifficultyLevelId]
GO
ALTER TABLE [dbo].[QuestionAnswers]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswers_Questions_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuestionAnswers] CHECK CONSTRAINT [FK_QuestionAnswers_Questions_QuestionId]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_DifficultyLevels_DifficultyLevelId] FOREIGN KEY([DifficultyLevelId])
REFERENCES [dbo].[DifficultyLevels] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_DifficultyLevels_DifficultyLevelId]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Subjects_SubjectId] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Subjects_SubjectId]
GO
/****** Object:  StoredProcedure [dbo].[CreateExam]    Script Date: 04-Jan-2022 9:48:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[CreateExam] 
	  @ExamTypesId INT = NULL
	
	
	,@SubjectId INT = NULL
AS
DECLARE @ExamId INT
declare @NumberOfQuestions INT = 0,@DifficultyLevelId INT = 0
DECLARE @table TABLE ([QuestionId] INT)

DECLARE xcursor CURSOR
FOR
SELECT [DifficultyLevelId]
	,[NumberOfQuestions]
FROM [dbo].[ExamTypesDetails]
WHERE [ExamTypeId] = @ExamTypesId

OPEN xcursor

FETCH xcursor
INTO @DifficultyLevelId
	,@NumberOfQuestions

WHILE @@FETCH_STATUS = 0
BEGIN
	
	PRINT @DifficultyLevelId

	INSERT INTO @table
	SELECT [dbo].[Questions].Id
	FROM Questions
	WHERE SubjectId = @SubjectId
		AND DifficultyLevelId = @DifficultyLevelId and @NumberOfQuestions>0

	FETCH xcursor
	INTO @DifficultyLevelId
		,@NumberOfQuestions
END

CLOSE xcursor

DEALLOCATE xcursor

SET ROWCOUNT 0

INSERT INTO [dbo].[Exam] (
	[ExamTypeId]
	,[CreatedAt]
	)
VALUES (
	@ExamTypesId
	,GETDATE()
	)

SET @ExamId = @@IDENTITY

INSERT INTO [dbo].[ExamQuestions] (
	[ExamId]
	,[QuestionId]
	)
SELECT @ExamId
	,questionID
FROM @table
se
SELECT QuestionAnswers.AnswerText
	,Questions.QuestionText
	,DifficultyLevels.DifficultyLevelName
FROM ExamQuestions
INNER JOIN QuestionAnswers ON ExamQuestions.QuestionId = QuestionAnswers.QuestionId
INNER JOIN Questions ON ExamQuestions.QuestionId = Questions.Id
	AND QuestionAnswers.QuestionId = Questions.Id
INNER JOIN DifficultyLevels ON Questions.DifficultyLevelId = DifficultyLevels.Id
WHERE ExamQuestions.ExamId = @ExamId
GO
USE [master]
GO
ALTER DATABASE [OnlineExamSystem] SET  READ_WRITE 
GO
