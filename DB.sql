USE [master]
GO
/****** Object:  Database [UploadImageDB]    Script Date: 03/28/2019 22:06:57 ******/
CREATE DATABASE [UploadImageDB] ON  PRIMARY 
( NAME = N'UploadImageDB', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\UploadImageDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UploadImageDB_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\UploadImageDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [UploadImageDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UploadImageDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UploadImageDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [UploadImageDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [UploadImageDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [UploadImageDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [UploadImageDB] SET ARITHABORT OFF
GO
ALTER DATABASE [UploadImageDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [UploadImageDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [UploadImageDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [UploadImageDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [UploadImageDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [UploadImageDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [UploadImageDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [UploadImageDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [UploadImageDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [UploadImageDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [UploadImageDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [UploadImageDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [UploadImageDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [UploadImageDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [UploadImageDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [UploadImageDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [UploadImageDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [UploadImageDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [UploadImageDB] SET  READ_WRITE
GO
ALTER DATABASE [UploadImageDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [UploadImageDB] SET  MULTI_USER
GO
ALTER DATABASE [UploadImageDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [UploadImageDB] SET DB_CHAINING OFF
GO
USE [UploadImageDB]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 03/28/2019 22:06:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Image](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[ImagePath] [varchar](max) NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON
INSERT [dbo].[Image] ([ImageID], [Title], [ImagePath]) VALUES (1, N'Intrior Desigin', N'~/Image53779085_2125437017494033_5619938224047652864_n19093836.jpg')
INSERT [dbo].[Image] ([ImageID], [Title], [ImagePath]) VALUES (2, N'Ami Tumi', N'~/Image/53779085_2125437017494033_5619938224047652864_n19375224.jpg')
SET IDENTITY_INSERT [dbo].[Image] OFF
