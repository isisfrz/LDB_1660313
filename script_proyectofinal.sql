USE [master]
GO
/****** Object:  Database [BibliotecaLAI]    Script Date: 11/11/2017 11:40:22 p.m. ******/
/****** Integrantes: Laura Adriana Paredes Sauceda, Isis Flores Ruiz, Alexis Leal Mata ******/

CREATE DATABASE [BibliotecaLAI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BibliotecaLAI', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BibliotecaLAI.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BibliotecaLAI_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BibliotecaLAI_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BibliotecaLAI] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BibliotecaLAI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BibliotecaLAI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET ARITHABORT OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BibliotecaLAI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BibliotecaLAI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BibliotecaLAI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BibliotecaLAI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BibliotecaLAI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BibliotecaLAI] SET  MULTI_USER 
GO
ALTER DATABASE [BibliotecaLAI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BibliotecaLAI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BibliotecaLAI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BibliotecaLAI] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BibliotecaLAI]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumnos](
	[Id_Alum] [int] IDENTITY(1,1) NOT NULL,
	[Alum_nom] [varchar](50) NULL,
	[Alum_ApPat] [varchar](50) NULL,
	[Alum_ApMat] [varchar](50) NULL,
	[Alum_FechNa] [datetime] NULL,
	[Alum_Dom] [varchar](70) NULL,
	[Alum_Tel] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Alum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Area]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[Id_Area] [int] IDENTITY(1,1) NOT NULL,
	[Area] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Autores]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Autores](
	[Id_Autor] [int] IDENTITY(1,1) NOT NULL,
	[Aut_Nom] [varchar](50) NULL,
	[Aut_Ap] [varchar](30) NULL,
	[Aut_Nacion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Autor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clasificacion]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clasificacion](
	[Id_Clasificacion] [int] IDENTITY(1,1) NOT NULL,
	[Clasificacion] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Clasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Editoriales]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Editoriales](
	[Id_edit] [int] IDENTITY(1,1) NOT NULL,
	[Edit_Nom] [varchar](50) NULL,
	[Edit_Nacion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_edit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ejemplares]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ejemplares](
	[Id_Ejem] [int] IDENTITY(1,1) NOT NULL,
	[Id_Libro] [int] NOT NULL,
	[Id_Estatus] [int] NOT NULL,
	[Id_EF] [int] NOT NULL,
	[Id_Ubi] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Ejem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[Id_Emp] [int] IDENTITY(1,1) NOT NULL,
	[Id_Puesto] [int] NOT NULL,
	[Nom_emp] [varchar](50) NULL,
	[Em_ApPat] [varchar](50) NULL,
	[Em_ApMat] [varchar](50) NULL,
	[Em_FechNa] [datetime] NULL,
	[Em_Dom] [varchar](70) NULL,
	[Em_Tel] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Emp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[Id_Estado] [int] IDENTITY(1,1) NOT NULL,
	[Estado_Nom] [varchar](30) NULL,
	[Id_Pais] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado_Fisico]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado_Fisico](
	[Id_EF] [int] IDENTITY(1,1) NOT NULL,
	[EFisico] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_EF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estante]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estante](
	[Id_Estante] [int] IDENTITY(1,1) NOT NULL,
	[Estante] [nvarchar](50) NULL,
	[Id_Pasillo] [int] NULL,
	[Id_Tema] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Estante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Estatus]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estatus](
	[Id_Estatus] [int] IDENTITY(1,1) NOT NULL,
	[Estatus] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Estatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Libro](
	[Id_Libro] [int] IDENTITY(1,1) NOT NULL,
	[Lib_Nom] [varchar](50) NULL,
	[Id_Autor] [int] NOT NULL,
	[Id_Edit] [int] NOT NULL,
	[Lib_Edic] [varchar](50) NULL,
	[Id_Clasificacion] [int] NOT NULL,
	[Id_Tema] [int] NOT NULL,
	[Fech_Lanz] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Libro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Municipio](
	[Id_Mun] [int] IDENTITY(1,1) NOT NULL,
	[Mun_Nom] [varchar](30) NULL,
	[Id_Pais] [int] NOT NULL,
	[Id_Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Mun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[Id_Pais] [int] IDENTITY(1,1) NOT NULL,
	[Pais_Nom] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pasillo]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pasillo](
	[Id_Pasillo] [int] IDENTITY(1,1) NOT NULL,
	[Pasillo] [nvarchar](50) NULL,
	[Id_Area] [int] NULL,
	[Id_Clasificacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Pasillo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Prestamos]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestamos](
	[Id_Pres] [int] IDENTITY(1,1) NOT NULL,
	[Id_Alum] [int] NOT NULL,
	[Id_Lib] [int] NOT NULL,
	[Id_Ejem] [int] NOT NULL,
	[Pres_FechNa] [datetime] NULL,
	[Entrega_FechNa] [datetime] NULL,
	[Id_Renova] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Pres] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Puestos]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Puestos](
	[Id_Puesto] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Puesto] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Renovaciones]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Renovaciones](
	[Id_Renova] [int] IDENTITY(1,1) NOT NULL,
	[Renova_Fech] [datetime] NULL,
	[Renova_Newfech] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Renova] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Repisa]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Repisa](
	[Id_Repisa] [int] IDENTITY(1,1) NOT NULL,
	[Repisa] [varchar](50) NULL,
	[Id_estante] [int] NOT NULL,
	[Id_pasillo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Repisa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tema]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tema](
	[Id_Tema] [int] IDENTITY(1,1) NOT NULL,
	[Tema] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Tema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ubicacion_Lib]    Script Date: 11/11/2017 11:40:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubicacion_Lib](
	[Id_Ubi] [int] NOT NULL,
	[Id_Libro] [int] NULL,
	[Id_Area] [int] NULL,
	[Id_Pasillo] [int] NULL,
	[Id_Estante] [int] NULL,
	[Id_Repisa] [int] NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Ejemplares]  WITH CHECK ADD FOREIGN KEY([Id_EF])
REFERENCES [dbo].[Estado_Fisico] ([Id_EF])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ejemplares]  WITH CHECK ADD FOREIGN KEY([Id_Estatus])
REFERENCES [dbo].[Estatus] ([Id_Estatus])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ejemplares]  WITH CHECK ADD FOREIGN KEY([Id_Libro])
REFERENCES [dbo].[Libro] ([Id_Libro])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ejemplares]  WITH CHECK ADD FOREIGN KEY([Id_Libro])
REFERENCES [dbo].[Libro] ([Id_Libro])
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([Id_Puesto])
REFERENCES [dbo].[Puestos] ([Id_Puesto])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([Id_Puesto])
REFERENCES [dbo].[Puestos] ([Id_Puesto])
GO
ALTER TABLE [dbo].[Estado]  WITH CHECK ADD FOREIGN KEY([Id_Pais])
REFERENCES [dbo].[Pais] ([Id_Pais])
GO
ALTER TABLE [dbo].[Estado]  WITH CHECK ADD FOREIGN KEY([Id_Pais])
REFERENCES [dbo].[Pais] ([Id_Pais])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Estante]  WITH CHECK ADD FOREIGN KEY([Id_Pasillo])
REFERENCES [dbo].[Pasillo] ([Id_Pasillo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Estante]  WITH CHECK ADD FOREIGN KEY([Id_Pasillo])
REFERENCES [dbo].[Pasillo] ([Id_Pasillo])
GO
ALTER TABLE [dbo].[Estante]  WITH CHECK ADD FOREIGN KEY([Id_Tema])
REFERENCES [dbo].[Tema] ([Id_Tema])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Estante]  WITH CHECK ADD FOREIGN KEY([Id_Tema])
REFERENCES [dbo].[Tema] ([Id_Tema])
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD FOREIGN KEY([Id_Autor])
REFERENCES [dbo].[Autores] ([Id_Autor])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD FOREIGN KEY([Id_Clasificacion])
REFERENCES [dbo].[Clasificacion] ([Id_Clasificacion])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD FOREIGN KEY([Id_Edit])
REFERENCES [dbo].[Editoriales] ([Id_edit])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD FOREIGN KEY([Id_Tema])
REFERENCES [dbo].[Tema] ([Id_Tema])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([Id_Estado])
REFERENCES [dbo].[Estado] ([Id_Estado])
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([Id_Pais])
REFERENCES [dbo].[Pais] ([Id_Pais])
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([Id_Pais])
REFERENCES [dbo].[Pais] ([Id_Pais])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pasillo]  WITH CHECK ADD FOREIGN KEY([Id_Area])
REFERENCES [dbo].[Area] ([Id_Area])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pasillo]  WITH CHECK ADD FOREIGN KEY([Id_Area])
REFERENCES [dbo].[Area] ([Id_Area])
GO
ALTER TABLE [dbo].[Pasillo]  WITH CHECK ADD FOREIGN KEY([Id_Clasificacion])
REFERENCES [dbo].[Clasificacion] ([Id_Clasificacion])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pasillo]  WITH CHECK ADD FOREIGN KEY([Id_Clasificacion])
REFERENCES [dbo].[Clasificacion] ([Id_Clasificacion])
GO
ALTER TABLE [dbo].[Prestamos]  WITH CHECK ADD FOREIGN KEY([Id_Alum])
REFERENCES [dbo].[Alumnos] ([Id_Alum])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Prestamos]  WITH CHECK ADD FOREIGN KEY([Id_Lib])
REFERENCES [dbo].[Libro] ([Id_Libro])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Prestamos]  WITH CHECK ADD FOREIGN KEY([Id_Renova])
REFERENCES [dbo].[Renovaciones] ([Id_Renova])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Repisa]  WITH CHECK ADD FOREIGN KEY([Id_estante])
REFERENCES [dbo].[Estante] ([Id_Estante])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ubicacion_Lib]  WITH CHECK ADD FOREIGN KEY([Id_Area])
REFERENCES [dbo].[Area] ([Id_Area])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ubicacion_Lib]  WITH CHECK ADD FOREIGN KEY([Id_Area])
REFERENCES [dbo].[Area] ([Id_Area])
GO
ALTER TABLE [dbo].[Ubicacion_Lib]  WITH CHECK ADD FOREIGN KEY([Id_Estante])
REFERENCES [dbo].[Estante] ([Id_Estante])
GO
ALTER TABLE [dbo].[Ubicacion_Lib]  WITH CHECK ADD FOREIGN KEY([Id_Libro])
REFERENCES [dbo].[Libro] ([Id_Libro])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ubicacion_Lib]  WITH CHECK ADD FOREIGN KEY([Id_Libro])
REFERENCES [dbo].[Libro] ([Id_Libro])
GO
ALTER TABLE [dbo].[Ubicacion_Lib]  WITH CHECK ADD FOREIGN KEY([Id_Pasillo])
REFERENCES [dbo].[Pasillo] ([Id_Pasillo])
GO
ALTER TABLE [dbo].[Ubicacion_Lib]  WITH CHECK ADD FOREIGN KEY([Id_Repisa])
REFERENCES [dbo].[Repisa] ([Id_Repisa])
GO
USE [master]
GO
ALTER DATABASE [BibliotecaLAI] SET  READ_WRITE 
GO
