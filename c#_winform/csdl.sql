USE [master]
GO
/****** Object:  Database [QLCD]    Script Date: 1/4/2019 10:20:01 PM ******/
CREATE DATABASE [QLCD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLCD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QLCD.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLCD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QLCD_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLCD] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLCD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLCD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLCD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLCD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLCD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLCD] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLCD] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLCD] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLCD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLCD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLCD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLCD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLCD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLCD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLCD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLCD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLCD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLCD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLCD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLCD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLCD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLCD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLCD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLCD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLCD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLCD] SET  MULTI_USER 
GO
ALTER DATABASE [QLCD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLCD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLCD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLCD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QLCD]
GO
/****** Object:  Table [dbo].[chuyende]    Script Date: 1/4/2019 10:20:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuyende](
	[machuyende] [int] IDENTITY(1,1) NOT NULL,
	[tenchuyende] [nvarchar](31) NULL,
	[soluongsinhvientoida] [int] NULL,
	[deadline] [datetime] NULL,
	[sonhomtoida] [int] NULL,
	[magv] [int] NULL,
	[tinhtrang] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[machuyende] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chuyende_hocky]    Script Date: 1/4/2019 10:20:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuyende_hocky](
	[machuyende] [int] NOT NULL,
	[mahocky] [int] NOT NULL,
	[soluongdangky] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[machuyende] ASC,
	[mahocky] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[giaovien]    Script Date: 1/4/2019 10:20:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giaovien](
	[magv] [int] IDENTITY(1,1) NOT NULL,
	[tengv] [nvarchar](31) NULL,
	[taikhoan] [nvarchar](31) NULL,
PRIMARY KEY CLUSTERED 
(
	[magv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hocky]    Script Date: 1/4/2019 10:20:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hocky](
	[mahocky] [int] IDENTITY(1,1) NOT NULL,
	[hocky] [int] NULL,
	[namhoc] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[mahocky] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ketqua]    Script Date: 1/4/2019 10:20:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ketqua](
	[makq] [int] NOT NULL,
	[masv] [int] NULL,
	[mahocky] [int] NULL,
	[machuyende] [int] NULL,
	[diem] [int] NULL,
	[lanthi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[makq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nganh]    Script Date: 1/4/2019 10:20:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nganh](
	[manganh] [int] IDENTITY(1,1) NOT NULL,
	[tennganh] [nvarchar](31) NULL,
	[tongsinhvien] [int] NULL,
	[soluongchuyende] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[manganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nganh_ChuyenDe]    Script Date: 1/4/2019 10:20:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nganh_ChuyenDe](
	[machuyende] [int] NOT NULL,
	[manganh] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[machuyende] ASC,
	[manganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nhom]    Script Date: 1/4/2019 10:20:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhom](
	[manhom] [int] IDENTITY(1,1) NOT NULL,
	[soluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[manhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sinhvien]    Script Date: 1/4/2019 10:20:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sinhvien](
	[masv] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](31) NULL,
	[gioitinh] [nvarchar](4) NULL,
	[ngaysinh] [datetime] NULL,
	[diachi] [nvarchar](51) NULL,
	[manhom] [int] NULL,
	[manganh] [int] NULL,
	[taikhoan] [nvarchar](31) NULL,
PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sinhvien_dangky_huydangky]    Script Date: 1/4/2019 10:20:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sinhvien_dangky_huydangky](
	[masv] [int] NOT NULL,
	[machuyende] [int] NOT NULL,
	[mahocky] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[masv] ASC,
	[machuyende] ASC,
	[mahocky] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 1/4/2019 10:20:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[taikhoan] [nvarchar](31) NOT NULL,
	[matkhau] [nvarchar](51) NULL,
	[email] [nvarchar](31) NULL,
	[chucvu] [nvarchar](51) NULL,
PRIMARY KEY CLUSTERED 
(
	[taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tracuu]    Script Date: 1/4/2019 10:20:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tracuu](
	[magv] [int] NOT NULL,
	[makq] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[magv] ASC,
	[makq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[chuyende] ON 

INSERT [dbo].[chuyende] ([machuyende], [tenchuyende], [soluongsinhvientoida], [deadline], [sonhomtoida], [magv], [tinhtrang]) VALUES (1, N'PTCSDL1', 50, CAST(N'2018-11-11 00:00:00.000' AS DateTime), 20, 1, N'MỞ')
INSERT [dbo].[chuyende] ([machuyende], [tenchuyende], [soluongsinhvientoida], [deadline], [sonhomtoida], [magv], [tinhtrang]) VALUES (2, N'CSDL', 50, CAST(N'2018-11-11 00:00:00.000' AS DateTime), 20, 1, N'MỞ')
SET IDENTITY_INSERT [dbo].[chuyende] OFF
INSERT [dbo].[chuyende_hocky] ([machuyende], [mahocky], [soluongdangky]) VALUES (1, 1, NULL)
INSERT [dbo].[chuyende_hocky] ([machuyende], [mahocky], [soluongdangky]) VALUES (2, 4, NULL)
SET IDENTITY_INSERT [dbo].[giaovien] ON 

INSERT [dbo].[giaovien] ([magv], [tengv], [taikhoan]) VALUES (1, N'Quốc Cường', N'giaovien')
SET IDENTITY_INSERT [dbo].[giaovien] OFF
SET IDENTITY_INSERT [dbo].[hocky] ON 

INSERT [dbo].[hocky] ([mahocky], [hocky], [namhoc]) VALUES (1, 1, N'2017-2018 ')
INSERT [dbo].[hocky] ([mahocky], [hocky], [namhoc]) VALUES (3, 2, N'2017-2018 ')
INSERT [dbo].[hocky] ([mahocky], [hocky], [namhoc]) VALUES (4, 1, N'2018-2019 ')
INSERT [dbo].[hocky] ([mahocky], [hocky], [namhoc]) VALUES (5, 2, N'2018-2019 ')
SET IDENTITY_INSERT [dbo].[hocky] OFF
INSERT [dbo].[ketqua] ([makq], [masv], [mahocky], [machuyende], [diem], [lanthi]) VALUES (1, 7, 4, 2, 10, 1)
SET IDENTITY_INSERT [dbo].[nganh] ON 

INSERT [dbo].[nganh] ([manganh], [tennganh], [tongsinhvien], [soluongchuyende]) VALUES (1, N'cntt', 10000, 50)
SET IDENTITY_INSERT [dbo].[nganh] OFF
SET IDENTITY_INSERT [dbo].[nhom] ON 

INSERT [dbo].[nhom] ([manhom], [soluong]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[nhom] OFF
SET IDENTITY_INSERT [dbo].[sinhvien] ON 

INSERT [dbo].[sinhvien] ([masv], [hoten], [gioitinh], [ngaysinh], [diachi], [manhom], [manganh], [taikhoan]) VALUES (7, N'quoccuong', N'nam', CAST(N'1997-05-30 00:00:00.000' AS DateTime), N'3/2', 1, 1, N'sinhvien')
SET IDENTITY_INSERT [dbo].[sinhvien] OFF
INSERT [dbo].[taikhoan] ([taikhoan], [matkhau], [email], [chucvu]) VALUES (N'admin', N'2EBED5CF17B4B832D4CCCED1A96F58CF', N'cuonganh365@gmail.com', N'admin')
INSERT [dbo].[taikhoan] ([taikhoan], [matkhau], [email], [chucvu]) VALUES (N'giaovien', N'9FE9893ADE1384AB1D48F52AB201723B', N'giaovien@gmail.com', N'giaovien')
INSERT [dbo].[taikhoan] ([taikhoan], [matkhau], [email], [chucvu]) VALUES (N'sinhvien', N'D41D8CD98F00B204E9800998ECF8427E', N'', N'')
ALTER TABLE [dbo].[chuyende]  WITH CHECK ADD FOREIGN KEY([magv])
REFERENCES [dbo].[giaovien] ([magv])
GO
ALTER TABLE [dbo].[chuyende_hocky]  WITH CHECK ADD FOREIGN KEY([mahocky])
REFERENCES [dbo].[hocky] ([mahocky])
GO
ALTER TABLE [dbo].[chuyende_hocky]  WITH CHECK ADD FOREIGN KEY([machuyende])
REFERENCES [dbo].[chuyende] ([machuyende])
GO
ALTER TABLE [dbo].[giaovien]  WITH CHECK ADD  CONSTRAINT [fk_taikhoangv] FOREIGN KEY([taikhoan])
REFERENCES [dbo].[taikhoan] ([taikhoan])
GO
ALTER TABLE [dbo].[giaovien] CHECK CONSTRAINT [fk_taikhoangv]
GO
ALTER TABLE [dbo].[ketqua]  WITH CHECK ADD FOREIGN KEY([masv])
REFERENCES [dbo].[sinhvien] ([masv])
GO
ALTER TABLE [dbo].[ketqua]  WITH CHECK ADD FOREIGN KEY([machuyende])
REFERENCES [dbo].[chuyende] ([machuyende])
GO
ALTER TABLE [dbo].[ketqua]  WITH CHECK ADD FOREIGN KEY([mahocky])
REFERENCES [dbo].[hocky] ([mahocky])
GO
ALTER TABLE [dbo].[Nganh_ChuyenDe]  WITH CHECK ADD FOREIGN KEY([machuyende])
REFERENCES [dbo].[chuyende] ([machuyende])
GO
ALTER TABLE [dbo].[Nganh_ChuyenDe]  WITH CHECK ADD FOREIGN KEY([manganh])
REFERENCES [dbo].[nganh] ([manganh])
GO
ALTER TABLE [dbo].[sinhvien]  WITH CHECK ADD FOREIGN KEY([manganh])
REFERENCES [dbo].[nganh] ([manganh])
GO
ALTER TABLE [dbo].[sinhvien]  WITH CHECK ADD FOREIGN KEY([manhom])
REFERENCES [dbo].[nhom] ([manhom])
GO
ALTER TABLE [dbo].[sinhvien]  WITH CHECK ADD  CONSTRAINT [fk_taikhoan] FOREIGN KEY([taikhoan])
REFERENCES [dbo].[taikhoan] ([taikhoan])
GO
ALTER TABLE [dbo].[sinhvien] CHECK CONSTRAINT [fk_taikhoan]
GO
ALTER TABLE [dbo].[sinhvien_dangky_huydangky]  WITH CHECK ADD FOREIGN KEY([machuyende])
REFERENCES [dbo].[chuyende] ([machuyende])
GO
ALTER TABLE [dbo].[sinhvien_dangky_huydangky]  WITH CHECK ADD FOREIGN KEY([mahocky])
REFERENCES [dbo].[hocky] ([mahocky])
GO
ALTER TABLE [dbo].[sinhvien_dangky_huydangky]  WITH CHECK ADD FOREIGN KEY([masv])
REFERENCES [dbo].[sinhvien] ([masv])
GO
ALTER TABLE [dbo].[tracuu]  WITH CHECK ADD FOREIGN KEY([magv])
REFERENCES [dbo].[giaovien] ([magv])
GO
ALTER TABLE [dbo].[tracuu]  WITH CHECK ADD FOREIGN KEY([makq])
REFERENCES [dbo].[ketqua] ([makq])
GO
USE [master]
GO
ALTER DATABASE [QLCD] SET  READ_WRITE 
GO
