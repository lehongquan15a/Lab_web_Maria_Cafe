USE [master]
GO
/****** Object:  Database [Maria_Cafe]    Script Date: 4/5/2020 10:26:59 PM ******/
CREATE DATABASE [Maria_Cafe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Maria_Cafe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Maria_Cafe.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Maria_Cafe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Maria_Cafe_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Maria_Cafe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Maria_Cafe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Maria_Cafe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Maria_Cafe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Maria_Cafe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Maria_Cafe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Maria_Cafe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Maria_Cafe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Maria_Cafe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Maria_Cafe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Maria_Cafe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Maria_Cafe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Maria_Cafe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Maria_Cafe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Maria_Cafe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Maria_Cafe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Maria_Cafe] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Maria_Cafe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Maria_Cafe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Maria_Cafe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Maria_Cafe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Maria_Cafe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Maria_Cafe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Maria_Cafe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Maria_Cafe] SET RECOVERY FULL 
GO
ALTER DATABASE [Maria_Cafe] SET  MULTI_USER 
GO
ALTER DATABASE [Maria_Cafe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Maria_Cafe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Maria_Cafe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Maria_Cafe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Maria_Cafe] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Maria_Cafe', N'ON'
GO
USE [Maria_Cafe]
GO
/****** Object:  Table [dbo].[About]    Script Date: 4/5/2020 10:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](250) NULL,
	[content] [nvarchar](max) NULL,
	[image] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 4/5/2020 10:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[key] [nvarchar](50) NOT NULL,
	[value] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Introduction]    Script Date: 4/5/2020 10:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Introduction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](250) NULL,
	[content] [nvarchar](max) NULL,
	[image] [nvarchar](250) NULL,
	[titleDes] [nvarchar](250) NULL,
	[description] [nvarchar](250) NULL,
	[address] [nvarchar](250) NULL,
	[phone] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/5/2020 10:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NULL,
	[price] [float] NULL,
	[content] [text] NULL,
	[createDate] [date] NULL CONSTRAINT [DF__Product__createD__108B795B]  DEFAULT (getdate()),
	[image] [nvarchar](250) NULL,
 CONSTRAINT [PK__Product__3213E83F75314957] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([id], [title], [content], [image]) VALUES (1, N'About my cakes', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
                            Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit 
                            in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril 
                            delenit augue duis dolore te feugait nulla facilisi.
                            <br/><br/>
                        Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis 
                        in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem 
                        consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. 
                        Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.   ', N'5.jpg')
SET IDENTITY_INSERT [dbo].[About] OFF
INSERT [dbo].[Contact] ([key], [value]) VALUES (N'Address', N'Ha Noi, Viet Nam')
INSERT [dbo].[Contact] ([key], [value]) VALUES (N'Email', N'Quanlhhe130736@fpt.edu.vn')
INSERT [dbo].[Contact] ([key], [value]) VALUES (N'Monday', N'Closed')
INSERT [dbo].[Contact] ([key], [value]) VALUES (N'Saturday and Sunday', N'11.00 - 21:00')
INSERT [dbo].[Contact] ([key], [value]) VALUES (N'Tel', N'123456')
INSERT [dbo].[Contact] ([key], [value]) VALUES (N'Tuesday - Friday', N'10:00 - 20:00')
SET IDENTITY_INSERT [dbo].[Introduction] ON 

INSERT [dbo].[Introduction] ([id], [title], [content], [image], [titleDes], [description], [address], [phone]) VALUES (1, N'Maria ''s Cosy Cafe', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                            Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.<br/>
                                Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica', N'2.jpg', N'Visit my cafe', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', N'Gammel Torv, Copenhagen', N'12 1234 1234')
SET IDENTITY_INSERT [dbo].[Introduction] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [price], [content], [createDate], [image]) VALUES (1, N'In the Afternoon', 100000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
                            Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', CAST(N'2020-04-04' AS Date), N'3.jpg')
INSERT [dbo].[Product] ([id], [name], [price], [content], [createDate], [image]) VALUES (2, N'Traditional Cakes', 120000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
                            Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', CAST(N'2020-04-04' AS Date), N'4.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
USE [master]
GO
ALTER DATABASE [Maria_Cafe] SET  READ_WRITE 
GO
