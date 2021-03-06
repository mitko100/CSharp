USE [master]
GO
/****** Object:  Database [Homework_University]    Script Date: 14.7.2013 г. 20:30:09 ******/
CREATE DATABASE [Homework_University]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Homework_University', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Homework_University.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Homework_University_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Homework_University_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Homework_University] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Homework_University].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Homework_University] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Homework_University] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Homework_University] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Homework_University] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Homework_University] SET ARITHABORT OFF 
GO
ALTER DATABASE [Homework_University] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Homework_University] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Homework_University] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Homework_University] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Homework_University] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Homework_University] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Homework_University] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Homework_University] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Homework_University] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Homework_University] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Homework_University] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Homework_University] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Homework_University] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Homework_University] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Homework_University] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Homework_University] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Homework_University] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Homework_University] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Homework_University] SET RECOVERY FULL 
GO
ALTER DATABASE [Homework_University] SET  MULTI_USER 
GO
ALTER DATABASE [Homework_University] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Homework_University] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Homework_University] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Homework_University] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Homework_University', N'ON'
GO
USE [Homework_University]
GO
/****** Object:  User [testUser]    Script Date: 14.7.2013 г. 20:30:09 ******/
CREATE USER [testUser] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[course]    Script Date: 14.7.2013 г. 20:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[id] [int] NOT NULL,
	[name] [nchar](30) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[course_student]    Script Date: 14.7.2013 г. 20:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course_student](
	[id] [int] NOT NULL,
	[_student_id] [int] NOT NULL,
	[_course_id] [int] NOT NULL,
 CONSTRAINT [PK_course_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[department]    Script Date: 14.7.2013 г. 20:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[id] [int] NOT NULL,
	[name] [nchar](50) NULL,
 CONSTRAINT [PK_department_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[department_course]    Script Date: 14.7.2013 г. 20:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department_course](
	[id] [int] NOT NULL,
	[_course_id] [int] NOT NULL,
	[_department_id] [int] NOT NULL,
 CONSTRAINT [PK_department_course_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[department_profesor]    Script Date: 14.7.2013 г. 20:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department_profesor](
	[id] [int] NOT NULL,
	[_department_id] [int] NOT NULL,
	[_profesor_id] [int] NOT NULL,
 CONSTRAINT [PK_department_profesor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[faculty]    Script Date: 14.7.2013 г. 20:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[faculty](
	[id] [int] NOT NULL,
	[name] [nchar](30) NULL,
 CONSTRAINT [PK_faculty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[faculty_department]    Script Date: 14.7.2013 г. 20:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[faculty_department](
	[id] [int] NOT NULL,
	[_faculty_id] [int] NOT NULL,
	[_department_id] [int] NOT NULL,
 CONSTRAINT [PK_faculty_department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[profesor]    Script Date: 14.7.2013 г. 20:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profesor](
	[id] [int] NOT NULL,
	[first_name] [nchar](25) NOT NULL,
	[last_name] [nchar](25) NOT NULL,
 CONSTRAINT [PK_profesor_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[profesor_course]    Script Date: 14.7.2013 г. 20:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profesor_course](
	[id] [int] NOT NULL,
	[_profesor_id] [int] NOT NULL,
	[_course_id] [int] NOT NULL,
 CONSTRAINT [PK_profesor_course_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[profesor_title]    Script Date: 14.7.2013 г. 20:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profesor_title](
	[id] [int] NOT NULL,
	[_profesor_id] [int] NOT NULL,
	[_title_id] [int] NOT NULL,
 CONSTRAINT [PK_profesor_title_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[student]    Script Date: 14.7.2013 г. 20:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[id] [int] NOT NULL,
	[first_name] [nchar](30) NOT NULL,
	[last_name] [nchar](30) NOT NULL,
	[_faculty_id] [int] NOT NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[title]    Script Date: 14.7.2013 г. 20:30:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[title](
	[id] [int] NOT NULL,
	[name] [nchar](20) NULL,
 CONSTRAINT [PK_title_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[course_student]  WITH CHECK ADD  CONSTRAINT [FK_course_student_course] FOREIGN KEY([_course_id])
REFERENCES [dbo].[course] ([id])
GO
ALTER TABLE [dbo].[course_student] CHECK CONSTRAINT [FK_course_student_course]
GO
ALTER TABLE [dbo].[course_student]  WITH CHECK ADD  CONSTRAINT [FK_course_student_student] FOREIGN KEY([_student_id])
REFERENCES [dbo].[student] ([id])
GO
ALTER TABLE [dbo].[course_student] CHECK CONSTRAINT [FK_course_student_student]
GO
ALTER TABLE [dbo].[department_course]  WITH CHECK ADD  CONSTRAINT [FK_department_course_course] FOREIGN KEY([_course_id])
REFERENCES [dbo].[course] ([id])
GO
ALTER TABLE [dbo].[department_course] CHECK CONSTRAINT [FK_department_course_course]
GO
ALTER TABLE [dbo].[department_course]  WITH CHECK ADD  CONSTRAINT [FK_department_course_department] FOREIGN KEY([_department_id])
REFERENCES [dbo].[department] ([id])
GO
ALTER TABLE [dbo].[department_course] CHECK CONSTRAINT [FK_department_course_department]
GO
ALTER TABLE [dbo].[department_profesor]  WITH CHECK ADD  CONSTRAINT [FK_department_profesor_department] FOREIGN KEY([_department_id])
REFERENCES [dbo].[department] ([id])
GO
ALTER TABLE [dbo].[department_profesor] CHECK CONSTRAINT [FK_department_profesor_department]
GO
ALTER TABLE [dbo].[department_profesor]  WITH CHECK ADD  CONSTRAINT [FK_department_profesor_profesor] FOREIGN KEY([_profesor_id])
REFERENCES [dbo].[profesor] ([id])
GO
ALTER TABLE [dbo].[department_profesor] CHECK CONSTRAINT [FK_department_profesor_profesor]
GO
ALTER TABLE [dbo].[faculty_department]  WITH CHECK ADD  CONSTRAINT [FK_faculty_department_department] FOREIGN KEY([_department_id])
REFERENCES [dbo].[department] ([id])
GO
ALTER TABLE [dbo].[faculty_department] CHECK CONSTRAINT [FK_faculty_department_department]
GO
ALTER TABLE [dbo].[faculty_department]  WITH CHECK ADD  CONSTRAINT [FK_faculty_department_faculty] FOREIGN KEY([_faculty_id])
REFERENCES [dbo].[faculty] ([id])
GO
ALTER TABLE [dbo].[faculty_department] CHECK CONSTRAINT [FK_faculty_department_faculty]
GO
ALTER TABLE [dbo].[profesor_course]  WITH CHECK ADD  CONSTRAINT [FK_profesor_course_course] FOREIGN KEY([_course_id])
REFERENCES [dbo].[course] ([id])
GO
ALTER TABLE [dbo].[profesor_course] CHECK CONSTRAINT [FK_profesor_course_course]
GO
ALTER TABLE [dbo].[profesor_course]  WITH CHECK ADD  CONSTRAINT [FK_profesor_course_profesor] FOREIGN KEY([_profesor_id])
REFERENCES [dbo].[profesor] ([id])
GO
ALTER TABLE [dbo].[profesor_course] CHECK CONSTRAINT [FK_profesor_course_profesor]
GO
ALTER TABLE [dbo].[profesor_title]  WITH CHECK ADD  CONSTRAINT [FK_profesor_title_profesor2] FOREIGN KEY([_profesor_id])
REFERENCES [dbo].[profesor] ([id])
GO
ALTER TABLE [dbo].[profesor_title] CHECK CONSTRAINT [FK_profesor_title_profesor2]
GO
ALTER TABLE [dbo].[profesor_title]  WITH CHECK ADD  CONSTRAINT [FK_profesor_title_title2] FOREIGN KEY([_title_id])
REFERENCES [dbo].[title] ([id])
GO
ALTER TABLE [dbo].[profesor_title] CHECK CONSTRAINT [FK_profesor_title_title2]
GO
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [FK_student_faculty] FOREIGN KEY([_faculty_id])
REFERENCES [dbo].[faculty] ([id])
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [FK_student_faculty]
GO
USE [master]
GO
ALTER DATABASE [Homework_University] SET  READ_WRITE 
GO
