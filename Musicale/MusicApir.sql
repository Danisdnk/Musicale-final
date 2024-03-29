USE [master]
GO
/****** Object:  Database [MusicApi]    Script Date: 7/25/2019 10:08:27 PM ******/
CREATE DATABASE [MusicApi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MusicApi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.TRAINING\MSSQL\DATA\MusicApi.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MusicApi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.TRAINING\MSSQL\DATA\MusicApi_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MusicApi] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MusicApi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MusicApi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MusicApi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MusicApi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MusicApi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MusicApi] SET ARITHABORT OFF 
GO
ALTER DATABASE [MusicApi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MusicApi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MusicApi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MusicApi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MusicApi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MusicApi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MusicApi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MusicApi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MusicApi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MusicApi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MusicApi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MusicApi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MusicApi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MusicApi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MusicApi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MusicApi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MusicApi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MusicApi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MusicApi] SET  MULTI_USER 
GO
ALTER DATABASE [MusicApi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MusicApi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MusicApi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MusicApi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MusicApi] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MusicApi]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 7/25/2019 10:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Album](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[anio] [varchar](4) NULL,
	[generoID] [int] NOT NULL,
	[portada] [nvarchar](max) NULL,
	[ArtistaID] [int] NULL,
 CONSTRAINT [PK__Album__3214EC27F286D423] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Artist]    Script Date: 7/25/2019 10:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Artist](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](max) NULL,
	[foto] [nvarchar](max) NULL,
 CONSTRAINT [PK__Artist__3214EC27085A7326] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 7/25/2019 10:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[genero] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Song]    Script Date: 7/25/2019 10:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Song](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[audio] [nvarchar](max) NULL,
	[AlbumID] [int] NULL,
 CONSTRAINT [PK__Song__3214EC2798DA93B3] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Album] ON 

INSERT [dbo].[Album] ([ID], [nombre], [anio], [generoID], [portada], [ArtistaID]) VALUES (19, N'porta', N'2003', 3, N'/Content/Images/Swedish_House_Mafia-Until_Now-Frontal19370483.jpg', NULL)
INSERT [dbo].[Album] ([ID], [nombre], [anio], [generoID], [portada], [ArtistaID]) VALUES (20, N'te detesto', N'2014', 2, N'/Content/Images/Porta19440505.jpg', NULL)
INSERT [dbo].[Album] ([ID], [nombre], [anio], [generoID], [portada], [ArtistaID]) VALUES (22, N'te detesto', N'1992', 3, N'/Content/Images/Miranda_-Fuerte-Frontal19481006.jpg', NULL)
INSERT [dbo].[Album] ([ID], [nombre], [anio], [generoID], [portada], [ArtistaID]) VALUES (29, N'zxczxc', N'2003', 3, N'/Content/Images/Nirvana-In_Utero-Frontal19230675.jpg', NULL)
INSERT [dbo].[Album] ([ID], [nombre], [anio], [generoID], [portada], [ArtistaID]) VALUES (30, N'porta', N'2003', 2, N'/Content/Images/not-image.jpg', NULL)
INSERT [dbo].[Album] ([ID], [nombre], [anio], [generoID], [portada], [ArtistaID]) VALUES (35, N'lalala', N'1232', 3, N'/Content/Images/Swedish_House_Mafia-Until_Now-Frontal19231993.jpg', NULL)
INSERT [dbo].[Album] ([ID], [nombre], [anio], [generoID], [portada], [ArtistaID]) VALUES (36, N'Cometas Por el cielo', N'2011', 1, N'/Content/Images/La_Oreja_De_Van_Gogh-Cometas_Por_El_Cielo_En_Directo_Desde_America-Frontal19453675.jpg', NULL)
INSERT [dbo].[Album] ([ID], [nombre], [anio], [generoID], [portada], [ArtistaID]) VALUES (37, N'holi', N'2342', 1, N'/Content/Images/Swedish_House_Mafia-Until_Now-Frontal19271626.jpg', NULL)
INSERT [dbo].[Album] ([ID], [nombre], [anio], [generoID], [portada], [ArtistaID]) VALUES (40, N'LoboNegro2', N'2019', 2, N'/Content/Images/not-image.jpg', 2)
INSERT [dbo].[Album] ([ID], [nombre], [anio], [generoID], [portada], [ArtistaID]) VALUES (41, N'HOLA', N'2016', 2, N'/Content/Images/not-image.jpg', 2)
SET IDENTITY_INSERT [dbo].[Album] OFF
SET IDENTITY_INSERT [dbo].[Artist] ON 

INSERT [dbo].[Artist] ([ID], [nombre], [descripcion], [foto]) VALUES (1, N'La quinta estacion', N'holi', N'asdasda.jpg')
INSERT [dbo].[Artist] ([ID], [nombre], [descripcion], [foto]) VALUES (2, N'Ambkor', N'ambkor es un rapero blablablabla', N'asdasda.jpg')
SET IDENTITY_INSERT [dbo].[Artist] OFF
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([ID], [genero]) VALUES (1, N'POP')
INSERT [dbo].[Gender] ([ID], [genero]) VALUES (2, N'ROCK')
INSERT [dbo].[Gender] ([ID], [genero]) VALUES (3, N'REGGAETON')
SET IDENTITY_INSERT [dbo].[Gender] OFF
SET IDENTITY_INSERT [dbo].[Song] ON 

INSERT [dbo].[Song] ([ID], [nombre], [audio], [AlbumID]) VALUES (1, N'Lo que te contaba', N'/Content/Images/Carlos Rivera.mp3', NULL)
INSERT [dbo].[Song] ([ID], [nombre], [audio], [AlbumID]) VALUES (2, N'Guapa', N'/Content/Images/Carlos Rivera.mp3', NULL)
SET IDENTITY_INSERT [dbo].[Song] OFF
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Artist] FOREIGN KEY([ArtistaID])
REFERENCES [dbo].[Artist] ([ID])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Artist]
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Gender] FOREIGN KEY([generoID])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Gender]
GO
ALTER TABLE [dbo].[Song]  WITH CHECK ADD  CONSTRAINT [FK_Song_Album] FOREIGN KEY([AlbumID])
REFERENCES [dbo].[Album] ([ID])
GO
ALTER TABLE [dbo].[Song] CHECK CONSTRAINT [FK_Song_Album]
GO
USE [master]
GO
ALTER DATABASE [MusicApi] SET  READ_WRITE 
GO
