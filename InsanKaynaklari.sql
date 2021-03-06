USE [master]
GO
/****** Object:  Database [insanKaynaklari]    Script Date: 7.06.2022 19:37:48 ******/
CREATE DATABASE [insanKaynaklari]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'insanKaynaklari', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\insanKaynaklari.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'insanKaynaklari_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\insanKaynaklari_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [insanKaynaklari] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [insanKaynaklari].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [insanKaynaklari] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [insanKaynaklari] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [insanKaynaklari] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [insanKaynaklari] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [insanKaynaklari] SET ARITHABORT OFF 
GO
ALTER DATABASE [insanKaynaklari] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [insanKaynaklari] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [insanKaynaklari] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [insanKaynaklari] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [insanKaynaklari] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [insanKaynaklari] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [insanKaynaklari] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [insanKaynaklari] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [insanKaynaklari] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [insanKaynaklari] SET  DISABLE_BROKER 
GO
ALTER DATABASE [insanKaynaklari] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [insanKaynaklari] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [insanKaynaklari] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [insanKaynaklari] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [insanKaynaklari] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [insanKaynaklari] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [insanKaynaklari] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [insanKaynaklari] SET RECOVERY FULL 
GO
ALTER DATABASE [insanKaynaklari] SET  MULTI_USER 
GO
ALTER DATABASE [insanKaynaklari] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [insanKaynaklari] SET DB_CHAINING OFF 
GO
ALTER DATABASE [insanKaynaklari] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [insanKaynaklari] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [insanKaynaklari] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [insanKaynaklari] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'insanKaynaklari', N'ON'
GO
ALTER DATABASE [insanKaynaklari] SET QUERY_STORE = OFF
GO
USE [insanKaynaklari]
GO
/****** Object:  Table [dbo].[bolum]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bolum](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bolumAd] [varchar](50) NULL,
 CONSTRAINT [PK_bolum] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[calisan]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[calisan](
	[calisanid] [int] IDENTITY(1,1) NOT NULL,
	[cAdSoyad] [varchar](50) NULL,
	[cYas] [int] NULL,
	[cAdres] [varchar](50) NULL,
	[cMail] [varchar](50) NULL,
	[cMaas] [int] NULL,
	[pozisyonId] [int] NULL,
 CONSTRAINT [PK_calisan] PRIMARY KEY CLUSTERED 
(
	[calisanid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pozisyon]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pozisyon](
	[pozisyonId] [int] IDENTITY(1,1) NOT NULL,
	[pozisyonAd] [varchar](50) NULL,
 CONSTRAINT [PK_pozisyon_1] PRIMARY KEY CLUSTERED 
(
	[pozisyonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sirket]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sirket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sAd] [varchar](50) NULL,
	[sAdres] [varchar](50) NULL,
	[sTel] [varchar](50) NULL,
	[sMail] [varchar](50) NULL,
	[bolumId] [int] NULL,
	[pozisyonId] [int] NULL,
 CONSTRAINT [PK_Sirket] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bolum] ON 

INSERT [dbo].[bolum] ([id], [bolumAd]) VALUES (4, N'Bilgi İşlem')
INSERT [dbo].[bolum] ([id], [bolumAd]) VALUES (6, N'Park ve Bahçeler')
INSERT [dbo].[bolum] ([id], [bolumAd]) VALUES (9, N'Fen İşleri')
SET IDENTITY_INSERT [dbo].[bolum] OFF
GO
SET IDENTITY_INSERT [dbo].[calisan] ON 

INSERT [dbo].[calisan] ([calisanid], [cAdSoyad], [cYas], [cAdres], [cMail], [cMaas], [pozisyonId]) VALUES (6, N'Ceren Soysal', 22, N'Üsküdar', N'ceren@hotmail.com', 6754, 7)
INSERT [dbo].[calisan] ([calisanid], [cAdSoyad], [cYas], [cAdres], [cMail], [cMaas], [pozisyonId]) VALUES (12, N'Aybars Köksal', 22, N'Şişli', N'aybarskoksal@hotmail.com', 10025, 10)
INSERT [dbo].[calisan] ([calisanid], [cAdSoyad], [cYas], [cAdres], [cMail], [cMaas], [pozisyonId]) VALUES (15, N'Asya Güçlü', 54, N'Nişantaşı', N'asya@gmail.com', 34242, 13)
INSERT [dbo].[calisan] ([calisanid], [cAdSoyad], [cYas], [cAdres], [cMail], [cMaas], [pozisyonId]) VALUES (16, N'Fatih Keskin', 29, N'Sultanbeyli', N'fatih@hotmail.com', 12367, 12)
SET IDENTITY_INSERT [dbo].[calisan] OFF
GO
SET IDENTITY_INSERT [dbo].[pozisyon] ON 

INSERT [dbo].[pozisyon] ([pozisyonId], [pozisyonAd]) VALUES (7, N'Çaycı')
INSERT [dbo].[pozisyon] ([pozisyonId], [pozisyonAd]) VALUES (8, N'Müdür')
INSERT [dbo].[pozisyon] ([pozisyonId], [pozisyonAd]) VALUES (9, N'CEO')
INSERT [dbo].[pozisyon] ([pozisyonId], [pozisyonAd]) VALUES (10, N'Yönetici')
INSERT [dbo].[pozisyon] ([pozisyonId], [pozisyonAd]) VALUES (11, N'Tezgahtar')
INSERT [dbo].[pozisyon] ([pozisyonId], [pozisyonAd]) VALUES (12, N'Temizlikçi')
INSERT [dbo].[pozisyon] ([pozisyonId], [pozisyonAd]) VALUES (13, N'Öğretmen')
SET IDENTITY_INSERT [dbo].[pozisyon] OFF
GO
SET IDENTITY_INSERT [dbo].[sirket] ON 

INSERT [dbo].[sirket] ([id], [sAd], [sAdres], [sTel], [sMail], [bolumId], [pozisyonId]) VALUES (2, N'Aslan', N'Maslak', N'32423432', N'aslan@gmail.com', 4, 8)
INSERT [dbo].[sirket] ([id], [sAd], [sAdres], [sTel], [sMail], [bolumId], [pozisyonId]) VALUES (15, N'Era', N'Levent', N'768767867', N'era@gmail.com', 9, 12)
SET IDENTITY_INSERT [dbo].[sirket] OFF
GO
ALTER TABLE [dbo].[calisan]  WITH CHECK ADD  CONSTRAINT [FK_calisan_pozisyon] FOREIGN KEY([pozisyonId])
REFERENCES [dbo].[pozisyon] ([pozisyonId])
GO
ALTER TABLE [dbo].[calisan] CHECK CONSTRAINT [FK_calisan_pozisyon]
GO
ALTER TABLE [dbo].[sirket]  WITH CHECK ADD  CONSTRAINT [FK_Sirket_bolum] FOREIGN KEY([bolumId])
REFERENCES [dbo].[bolum] ([id])
GO
ALTER TABLE [dbo].[sirket] CHECK CONSTRAINT [FK_Sirket_bolum]
GO
ALTER TABLE [dbo].[sirket]  WITH CHECK ADD  CONSTRAINT [FK_Sirket_pozisyon] FOREIGN KEY([pozisyonId])
REFERENCES [dbo].[pozisyon] ([pozisyonId])
GO
ALTER TABLE [dbo].[sirket] CHECK CONSTRAINT [FK_Sirket_pozisyon]
GO
/****** Object:  StoredProcedure [dbo].[bolumEkle]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[bolumEkle]
@bolumAdi varchar(50)
as begin
insert into [dbo].[bolum](bolumAd) values (@bolumAdi)
end
GO
/****** Object:  StoredProcedure [dbo].[bolumGuncelle]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[bolumGuncelle]
@id int,
@bolumAdi varchar(50)
as begin
update [dbo].[bolum] set bolumAd=@bolumAdi where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[bolumListele]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[bolumListele]
as begin
Select * from bolum
end
GO
/****** Object:  StoredProcedure [dbo].[bolumSil]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[bolumSil]
@id int 
as begin
delete from [dbo].[bolum] where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[calisanEkle]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[calisanEkle]
@adSoyad varchar(50),
@yas int,
@adres varchar(50),
@mail varchar(50),
@maas int,
@pozisyonId int
as begin
insert into [dbo].[calisan] (cAdSoyad, cYas, cAdres, cMail, cMaas, pozisyonId) values (@adSoyad, @yas, @adres, @mail, @maas, @pozisyonId)
end
GO
/****** Object:  StoredProcedure [dbo].[calisanGuncelle]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[calisanGuncelle]
@id int,
@adSoyad varchar(50),
@yas int,
@adres varchar(50),
@mail varchar(50),
@maas int,
@pozisyonId int
as begin
update [dbo].[calisan] set cAdSoyad=@adSoyad, cYas=@yas, cAdres=@adres, cMail=@mail, cMaas= @maas, pozisyonId=@pozisyonId where calisanid=@id
end
GO
/****** Object:  StoredProcedure [dbo].[calisanListele]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[calisanListele]
as begin 
Select * from calisan
end
GO
/****** Object:  StoredProcedure [dbo].[calisanSil]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[calisanSil]
@id int
as begin 
delete from [dbo].[calisan] where calisanid=@id
end
GO
/****** Object:  StoredProcedure [dbo].[pozisyonEkle]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pozisyonEkle]
@pozisyonAdi varchar(50)
as begin
insert into [dbo].[pozisyon](pozisyonAd) values (@pozisyonAdi)
end
GO
/****** Object:  StoredProcedure [dbo].[pozisyonGuncelle]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pozisyonGuncelle]
@id int,
@pozisyonAdi varchar(50)
as begin
update [dbo].[pozisyon] set pozisyonAd=@pozisyonAdi where pozisyonId=@id
end
GO
/****** Object:  StoredProcedure [dbo].[pozisyonListele]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pozisyonListele]
as begin
Select * from pozisyon
end
GO
/****** Object:  StoredProcedure [dbo].[pozisyonSil]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pozisyonSil]
@id int 
as begin
delete from [dbo].[pozisyon] where pozisyonId=@id
end
GO
/****** Object:  StoredProcedure [dbo].[sirketEkle]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sirketEkle]
@sAd varchar(50),
@sAdres varchar(50),
@sTel varchar(50),
@sMail varchar(50),
@bolumId int,
@pozId int
as begin
insert into [dbo].[sirket] (sAd, sAdres, sTel, sMail, bolumId, pozisyonId) values (@sAd, @sAdres, @sTel, @sMail, @bolumId, @pozId)
end
GO
/****** Object:  StoredProcedure [dbo].[sirketGuncelle]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sirketGuncelle]
@sirketId int,
@sAd varchar(50),
@sAdres varchar(50),
@sTel varchar(50),
@sMail varchar(50),
@bolumId int,
@pozId int
as begin
update [dbo].[sirket] set sAd=@sAd, sAdres=@sAdres, sTel=@sTel, sMail= @sMail, bolumId=@bolumId, pozisyonId=@pozId where id=@sirketId
end
GO
/****** Object:  StoredProcedure [dbo].[sirketListele]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sirketListele]
as begin
Select * from [dbo].[sirket]
end
GO
/****** Object:  StoredProcedure [dbo].[sirketSil]    Script Date: 7.06.2022 19:37:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sirketSil]
@id int 
as begin
delete from [dbo].[sirket] where id=@id
end
GO
USE [master]
GO
ALTER DATABASE [insanKaynaklari] SET  READ_WRITE 
GO
