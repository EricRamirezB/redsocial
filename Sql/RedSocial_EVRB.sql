USE [master]
GO
/****** Object:  Database [RedSocial_EVRB]    Script Date: 21/10/2018 8:07:10 p. m. ******/
CREATE DATABASE [RedSocial_EVRB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RedSocial_EVRB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\RedSocial_EVRB.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RedSocial_EVRB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\RedSocial_EVRB_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RedSocial_EVRB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RedSocial_EVRB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RedSocial_EVRB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET ARITHABORT OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [RedSocial_EVRB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RedSocial_EVRB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RedSocial_EVRB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RedSocial_EVRB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RedSocial_EVRB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [RedSocial_EVRB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RedSocial_EVRB] SET  MULTI_USER 
GO
ALTER DATABASE [RedSocial_EVRB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RedSocial_EVRB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RedSocial_EVRB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RedSocial_EVRB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [RedSocial_EVRB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [RedSocial_EVRB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 21/10/2018 8:07:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publicacion]    Script Date: 21/10/2018 8:07:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publicacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](200) NOT NULL,
	[FechaPublicacion] [datetime] NOT NULL,
	[MeGusta] [int] NOT NULL,
	[MeDigusta] [int] NOT NULL,
	[VecesCompartido] [int] NOT NULL,
	[EsPrivada] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Publicacion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [RedSocial_EVRB] SET  READ_WRITE 
GO
