USE [Cadastro]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 08/05/2019 21:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteId] [int] NOT NULL,
	[Nome] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Telefone] [varchar](50) NULL,
	[TipoId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipos]    Script Date: 08/05/2019 21:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos](
	[TipoId] [int] NOT NULL,
	[Nome] [varchar](50) NULL,
 CONSTRAINT [PK_Tipos] PRIMARY KEY CLUSTERED 
(
	[TipoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([ClienteId], [Nome], [Email], [Telefone], [TipoId]) VALUES (1, N'Felipe', N'felip3.fl@gmail.com', N'99998888', 1)
GO
INSERT [dbo].[Clientes] ([ClienteId], [Nome], [Email], [Telefone], [TipoId]) VALUES (2, N'Pamella', N'pamella@icloud.com', N'78945555', 2)
GO
INSERT [dbo].[Clientes] ([ClienteId], [Nome], [Email], [Telefone], [TipoId]) VALUES (3, N'Joao', N'jaoo@joao', N'12312312', 3)
GO
INSERT [dbo].[Tipos] ([TipoId], [Nome]) VALUES (1, N'Normal')
GO
INSERT [dbo].[Tipos] ([TipoId], [Nome]) VALUES (2, N'Preferencial')
GO
INSERT [dbo].[Tipos] ([TipoId], [Nome]) VALUES (3, N'VIP')
GO
INSERT [dbo].[Tipos] ([TipoId], [Nome]) VALUES (4, N'Inadimplente')
GO
