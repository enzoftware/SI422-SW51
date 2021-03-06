USE [master]
GO
/****** Object:  Database [helpDesk]    Script Date: 27/08/2018 20:18:36 ******/
CREATE DATABASE [helpDesk]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'helpDesk', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\helpDesk.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'helpDesk_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\helpDesk_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [helpDesk] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [helpDesk].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [helpDesk] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [helpDesk] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [helpDesk] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [helpDesk] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [helpDesk] SET ARITHABORT OFF 
GO
ALTER DATABASE [helpDesk] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [helpDesk] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [helpDesk] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [helpDesk] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [helpDesk] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [helpDesk] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [helpDesk] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [helpDesk] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [helpDesk] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [helpDesk] SET  DISABLE_BROKER 
GO
ALTER DATABASE [helpDesk] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [helpDesk] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [helpDesk] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [helpDesk] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [helpDesk] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [helpDesk] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [helpDesk] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [helpDesk] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [helpDesk] SET  MULTI_USER 
GO
ALTER DATABASE [helpDesk] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [helpDesk] SET DB_CHAINING OFF 
GO
ALTER DATABASE [helpDesk] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [helpDesk] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [helpDesk] SET DELAYED_DURABILITY = DISABLED 
GO
USE [helpDesk]
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 27/08/2018 20:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Equipo](
	[id_equipo] [int] IDENTITY(1,1) NOT NULL,
	[tipo_equipo] [varchar](50) NOT NULL,
	[estado_equipo] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Equipo] PRIMARY KEY CLUSTERED 
(
	[id_equipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_EQUIPO]    Script Date: 27/08/2018 20:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_INSERTAR_EQUIPO](
	@tipoequipo as varchar(50),
	@estadoequipo as varchar(50),
	@descripcionequipo as varchar(100)
)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	INSERT INTO Equipo VALUES(@tipoequipo,@estadoequipo,@descripcionequipo)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_EQUIPOS]    Script Date: 27/08/2018 20:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_LISTAR_EQUIPOS] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Equipo
END

GO
USE [master]
GO
ALTER DATABASE [helpDesk] SET  READ_WRITE 
GO
