Create DATABASE [laboratorio]
USE [laboratorio]
GO
/****** Object:  Table [dbo].[tornillo]    Script Date: 09/02/2017 11:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tornillo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tornillo](
	[nombre] [varchar](45) NULL,
	[modelo] [varchar](45) NULL,
	[medida] [varchar](45) NULL,
	[material] [varchar](45) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tornillo] ([nombre], [modelo], [medida], [material]) VALUES (N'mediano', N'americano', N'2.5 cm', N'metal')
/****** Object:  Table [dbo].[empleado]    Script Date: 09/02/2017 11:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[empleado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[empleado](
	[nombre] [varchar](45) NULL,
	[numeroEmpleado] [int] NULL,
	[sueldo] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[empleado] ([nombre], [numeroEmpleado], [sueldo]) VALUES (N'jonathan', 1, 25)
INSERT [dbo].[empleado] ([nombre], [numeroEmpleado], [sueldo]) VALUES (N'jonathan', 1, 25)
INSERT [dbo].[empleado] ([nombre], [numeroEmpleado], [sueldo]) VALUES (N'jonathan', 1, 125)
INSERT [dbo].[empleado] ([nombre], [numeroEmpleado], [sueldo]) VALUES (N'jonathan', 1, 125)
/****** Object:  Table [dbo].[distruibidora]    Script Date: 09/02/2017 11:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[distruibidora]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[distruibidora](
	[nombre] [varchar](45) NULL,
	[direccion] [varchar](45) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[distruibidora] ([nombre], [direccion]) VALUES (N'pemex', N'san nicolas')
