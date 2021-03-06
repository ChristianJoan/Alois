USE [master]
GO
/****** Object:  Database [Alois]    Script Date: 29/05/2019 20:42:15 ******/
CREATE DATABASE [Alois]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Alois', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Alois.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Alois_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Alois_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Alois] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Alois].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Alois] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Alois] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Alois] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Alois] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Alois] SET ARITHABORT OFF 
GO
ALTER DATABASE [Alois] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Alois] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Alois] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Alois] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Alois] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Alois] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Alois] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Alois] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Alois] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Alois] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Alois] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Alois] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Alois] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Alois] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Alois] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Alois] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Alois] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Alois] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Alois] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Alois] SET  MULTI_USER 
GO
ALTER DATABASE [Alois] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Alois] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Alois] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Alois] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Alois]
GO
/****** Object:  Table [dbo].[Actividad]    Script Date: 29/05/2019 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Actividad](
	[clave_act] [varchar](6) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[clave_act] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 29/05/2019 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Doctor](
	[rfc] [varchar](13) NOT NULL,
	[especialidad] [varchar](25) NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[rfc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Encargado]    Script Date: 29/05/2019 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Encargado](
	[rfc] [varchar](13) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[ap_paterno] [varchar](50) NOT NULL,
	[ap_materno] [varchar](50) NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[num_int] [numeric](6, 0) NOT NULL,
	[num_ext] [numeric](6, 0) NOT NULL,
	[fracc] [varchar](50) NOT NULL,
	[cp] [numeric](5, 0) NOT NULL,
	[telefono] [numeric](10, 0) NOT NULL,
	[correo] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Encargado] PRIMARY KEY CLUSTERED 
(
	[rfc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Enfermera]    Script Date: 29/05/2019 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Enfermera](
	[rfc] [varchar](13) NOT NULL,
	[especialidad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Enfermera] PRIMARY KEY CLUSTERED 
(
	[rfc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 29/05/2019 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Habitacion](
	[clave_hab] [varchar](6) NOT NULL,
	[tipo] [varchar](10) NOT NULL,
	[costo] [numeric](6, 0) NOT NULL,
	[capacidad] [numeric](3, 0) NOT NULL,
 CONSTRAINT [PK_Habitacion] PRIMARY KEY CLUSTERED 
(
	[clave_hab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medicamento]    Script Date: 29/05/2019 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medicamento](
	[clave_med] [varchar](6) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](500) NOT NULL,
	[existencia] [numeric](4, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[clave_med] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 29/05/2019 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paciente](
	[clave_pac] [varchar](6) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[ap_paterno] [varchar](50) NOT NULL,
	[ap_materno] [varchar](50) NOT NULL,
	[diagnostico] [varchar](1000) NOT NULL,
	[clave_enc] [varchar](13) NOT NULL,
	[fecha_ing] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[clave_pac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paciente_Act]    Script Date: 29/05/2019 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paciente_Act](
	[clave_pac] [varchar](6) NOT NULL,
	[clave_act] [varchar](6) NOT NULL,
	[estado] [varchar](10) NOT NULL,
	[tiempo] [time](0) NOT NULL,
	[evaluacion] [numeric](3, 0) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paciente_Enf_Rec]    Script Date: 29/05/2019 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paciente_Enf_Rec](
	[clave_pac] [varchar](6) NOT NULL,
	[rfc] [varchar](13) NOT NULL,
	[servicio] [varchar](500) NOT NULL,
	[clave_rec] [varchar](6) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paciente_Hab]    Script Date: 29/05/2019 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paciente_Hab](
	[clave_pac] [varchar](6) NOT NULL,
	[clave_hab] [varchar](6) NOT NULL,
	[ingreso] [datetime] NOT NULL,
	[salida] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 29/05/2019 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Personal](
	[rfc] [varchar](13) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[ap_paterno] [varchar](50) NOT NULL,
	[ap_materno] [varchar](50) NOT NULL,
	[telefono] [numeric](10, 0) NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[num_int] [numeric](6, 0) NOT NULL,
	[num_ext] [numeric](6, 0) NOT NULL,
	[fracc] [varchar](50) NOT NULL,
	[cp] [numeric](5, 0) NOT NULL,
	[correo] [varchar](100) NOT NULL,
	[hora_entrada] [time](3) NOT NULL,
	[hora_salida] [time](3) NOT NULL,
	[sueldo] [numeric](10, 0) NOT NULL,
 CONSTRAINT [PK_Personal] PRIMARY KEY CLUSTERED 
(
	[rfc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Receta]    Script Date: 29/05/2019 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Receta](
	[clave_rec] [varchar](6) NOT NULL,
	[rfc] [varchar](13) NOT NULL,
	[clave_pac] [varchar](6) NOT NULL,
	[fecha_hora] [datetime] NOT NULL,
 CONSTRAINT [PK_Receta] PRIMARY KEY CLUSTERED 
(
	[clave_rec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Receta_Med]    Script Date: 29/05/2019 20:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Receta_Med](
	[clave_rec] [varchar](6) NOT NULL,
	[clave_med] [varchar](6) NOT NULL,
	[cantidad] [numeric](3, 0) NOT NULL,
	[dosis] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Personal] FOREIGN KEY([rfc])
REFERENCES [dbo].[Personal] ([rfc])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Personal]
GO
ALTER TABLE [dbo].[Enfermera]  WITH CHECK ADD  CONSTRAINT [FK_Enfermera_Personal] FOREIGN KEY([rfc])
REFERENCES [dbo].[Personal] ([rfc])
GO
ALTER TABLE [dbo].[Enfermera] CHECK CONSTRAINT [FK_Enfermera_Personal]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Encargado] FOREIGN KEY([clave_enc])
REFERENCES [dbo].[Encargado] ([rfc])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Encargado]
GO
ALTER TABLE [dbo].[Paciente_Act]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Act_Actividad] FOREIGN KEY([clave_act])
REFERENCES [dbo].[Actividad] ([clave_act])
GO
ALTER TABLE [dbo].[Paciente_Act] CHECK CONSTRAINT [FK_Paciente_Act_Actividad]
GO
ALTER TABLE [dbo].[Paciente_Act]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Act_Paciente] FOREIGN KEY([clave_pac])
REFERENCES [dbo].[Paciente] ([clave_pac])
GO
ALTER TABLE [dbo].[Paciente_Act] CHECK CONSTRAINT [FK_Paciente_Act_Paciente]
GO
ALTER TABLE [dbo].[Paciente_Enf_Rec]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Enf_Rec_Enfermera] FOREIGN KEY([rfc])
REFERENCES [dbo].[Enfermera] ([rfc])
GO
ALTER TABLE [dbo].[Paciente_Enf_Rec] CHECK CONSTRAINT [FK_Paciente_Enf_Rec_Enfermera]
GO
ALTER TABLE [dbo].[Paciente_Enf_Rec]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Enf_Rec_Paciente] FOREIGN KEY([clave_pac])
REFERENCES [dbo].[Paciente] ([clave_pac])
GO
ALTER TABLE [dbo].[Paciente_Enf_Rec] CHECK CONSTRAINT [FK_Paciente_Enf_Rec_Paciente]
GO
ALTER TABLE [dbo].[Paciente_Enf_Rec]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Enf_Rec_Receta] FOREIGN KEY([clave_rec])
REFERENCES [dbo].[Receta] ([clave_rec])
GO
ALTER TABLE [dbo].[Paciente_Enf_Rec] CHECK CONSTRAINT [FK_Paciente_Enf_Rec_Receta]
GO
ALTER TABLE [dbo].[Paciente_Hab]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Hab_Habitacion] FOREIGN KEY([clave_hab])
REFERENCES [dbo].[Habitacion] ([clave_hab])
GO
ALTER TABLE [dbo].[Paciente_Hab] CHECK CONSTRAINT [FK_Paciente_Hab_Habitacion]
GO
ALTER TABLE [dbo].[Paciente_Hab]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Hab_Paciente] FOREIGN KEY([clave_pac])
REFERENCES [dbo].[Paciente] ([clave_pac])
GO
ALTER TABLE [dbo].[Paciente_Hab] CHECK CONSTRAINT [FK_Paciente_Hab_Paciente]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Doctor] FOREIGN KEY([rfc])
REFERENCES [dbo].[Doctor] ([rfc])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Doctor]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Paciente] FOREIGN KEY([clave_pac])
REFERENCES [dbo].[Paciente] ([clave_pac])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Paciente]
GO
ALTER TABLE [dbo].[Receta_Med]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Med_Medicamento] FOREIGN KEY([clave_med])
REFERENCES [dbo].[Medicamento] ([clave_med])
GO
ALTER TABLE [dbo].[Receta_Med] CHECK CONSTRAINT [FK_Receta_Med_Medicamento]
GO
ALTER TABLE [dbo].[Receta_Med]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Med_Receta] FOREIGN KEY([clave_rec])
REFERENCES [dbo].[Receta] ([clave_rec])
GO
ALTER TABLE [dbo].[Receta_Med] CHECK CONSTRAINT [FK_Receta_Med_Receta]
GO
USE [master]
GO
ALTER DATABASE [Alois] SET  READ_WRITE 
GO
