USE [master]
GO
/****** Object:  Database [Online Boutique]    Script Date: 6/4/2017 8:54:39 PM ******/
CREATE DATABASE [Online Boutique]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Online Boutique', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Online Boutique.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Online Boutique_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Online Boutique_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Online Boutique] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Online Boutique].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Online Boutique] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Online Boutique] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Online Boutique] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Online Boutique] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Online Boutique] SET ARITHABORT OFF 
GO
ALTER DATABASE [Online Boutique] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Online Boutique] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Online Boutique] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Online Boutique] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Online Boutique] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Online Boutique] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Online Boutique] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Online Boutique] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Online Boutique] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Online Boutique] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Online Boutique] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Online Boutique] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Online Boutique] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Online Boutique] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Online Boutique] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Online Boutique] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Online Boutique] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Online Boutique] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Online Boutique] SET  MULTI_USER 
GO
ALTER DATABASE [Online Boutique] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Online Boutique] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Online Boutique] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Online Boutique] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Online Boutique] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Online Boutique]
GO
/****** Object:  Table [dbo].[ad]    Script Date: 6/4/2017 8:54:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [char](20) NULL,
	[password] [char](20) NULL,
 CONSTRAINT [PK_ad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[donhang]    Script Date: 6/4/2017 8:54:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[donhang](
	[id_hd] [int] IDENTITY(1,1) NOT NULL,
	[masp] [int] NULL,
	[tenkh] [nvarchar](50) NULL,
	[sdt] [char](12) NULL,
	[email] [varchar](200) NULL,
	[diachi] [nvarchar](200) NULL,
	[soluong] [int] NULL,
	[ghichu] [nvarchar](200) NULL,
	[thanhtien] [int] NULL,
	[trangthai] [int] NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_donhang] PRIMARY KEY CLUSTERED 
(
	[id_hd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/4/2017 8:54:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[tentaikhoan] [nvarchar](50) NULL,
	[matkhau] [nvarchar](50) NULL,
	[hoten] [nvarchar](50) NULL,
	[gioitinh] [nvarchar](10) NULL,
	[email] [nvarchar](50) NULL,
	[sdt] [nvarchar](50) NULL,
	[Diachi] [nvarchar](100) NULL,
	[quyenhan] [varchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 6/4/2017 8:54:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[maloaisp] [int] IDENTITY(100,1) NOT NULL,
	[tenloaisp] [nvarchar](50) NULL,
	[gioitinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[maloaisp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/4/2017 8:54:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[masp] [int] IDENTITY(1000,1) NOT NULL,
	[tensp] [nvarchar](50) NULL,
	[giagocsp] [int] NULL,
	[maloaisp] [int] NULL,
	[giabansp] [int] NULL,
	[ngaynhapsp] [date] NULL,
	[soluongsp] [int] NULL,
	[motasp] [nvarchar](50) NULL,
	[anhsp] [nvarchar](200) NULL,
	[tinhtrangsp] [nvarchar](50) NULL,
	[size] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([maloaisp])
REFERENCES [dbo].[LoaiSanPham] ([maloaisp])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
USE [master]
GO
ALTER DATABASE [Online Boutique] SET  READ_WRITE 
GO
