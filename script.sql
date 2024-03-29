USE [master]
GO
/****** Object:  Database [Hinh]    Script Date: 6/12/2020 4:32:56 PM ******/
CREATE DATABASE [Hinh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hinh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Hinh.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Hinh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Hinh_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Hinh] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hinh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hinh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hinh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hinh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hinh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hinh] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hinh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hinh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hinh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hinh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hinh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hinh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hinh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hinh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hinh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hinh] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Hinh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hinh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hinh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hinh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hinh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hinh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hinh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hinh] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hinh] SET  MULTI_USER 
GO
ALTER DATABASE [Hinh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hinh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hinh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hinh] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Hinh] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Hinh]
GO
/****** Object:  Table [dbo].[Hinh]    Script Date: 6/12/2020 4:32:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hinh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaHinh] [int] NULL,
	[canh1] [float] NULL,
	[canh2] [float] NULL,
	[canh3] [float] NULL,
	[canh4] [float] NULL,
	[canh5] [float] NULL,
	[canh6] [float] NULL,
	[canh7] [float] NULL,
	[canh8] [float] NULL,
 CONSTRAINT [PK_Hinh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiHinh]    Script Date: 6/12/2020 4:32:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHinh](
	[MaHinh] [int] NOT NULL,
	[TenHinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiHinh] PRIMARY KEY CLUSTERED 
(
	[MaHinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Hinh] ON 

INSERT [dbo].[Hinh] ([ID], [MaHinh], [canh1], [canh2], [canh3], [canh4], [canh5], [canh6], [canh7], [canh8]) VALUES (1, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Hinh] ([ID], [MaHinh], [canh1], [canh2], [canh3], [canh4], [canh5], [canh6], [canh7], [canh8]) VALUES (2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Hinh] ([ID], [MaHinh], [canh1], [canh2], [canh3], [canh4], [canh5], [canh6], [canh7], [canh8]) VALUES (3, 3, 3, 4, 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Hinh] ([ID], [MaHinh], [canh1], [canh2], [canh3], [canh4], [canh5], [canh6], [canh7], [canh8]) VALUES (4, 1, 3.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Hinh] ([ID], [MaHinh], [canh1], [canh2], [canh3], [canh4], [canh5], [canh6], [canh7], [canh8]) VALUES (5, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Hinh] ([ID], [MaHinh], [canh1], [canh2], [canh3], [canh4], [canh5], [canh6], [canh7], [canh8]) VALUES (6, 3, 10, 20, 30, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Hinh] ([ID], [MaHinh], [canh1], [canh2], [canh3], [canh4], [canh5], [canh6], [canh7], [canh8]) VALUES (7, 4, 20, 34, 56, 36, 24, 16, NULL, NULL)
INSERT [dbo].[Hinh] ([ID], [MaHinh], [canh1], [canh2], [canh3], [canh4], [canh5], [canh6], [canh7], [canh8]) VALUES (8, 2, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Hinh] OFF
INSERT [dbo].[LoaiHinh] ([MaHinh], [TenHinh]) VALUES (1, N'Circle')
INSERT [dbo].[LoaiHinh] ([MaHinh], [TenHinh]) VALUES (2, N'Square')
INSERT [dbo].[LoaiHinh] ([MaHinh], [TenHinh]) VALUES (3, N'Triangle')
INSERT [dbo].[LoaiHinh] ([MaHinh], [TenHinh]) VALUES (4, N'Polygon')
ALTER TABLE [dbo].[Hinh]  WITH CHECK ADD  CONSTRAINT [FK_Hinh_LoaiHinh] FOREIGN KEY([MaHinh])
REFERENCES [dbo].[LoaiHinh] ([MaHinh])
GO
ALTER TABLE [dbo].[Hinh] CHECK CONSTRAINT [FK_Hinh_LoaiHinh]
GO
USE [master]
GO
ALTER DATABASE [Hinh] SET  READ_WRITE 
GO
