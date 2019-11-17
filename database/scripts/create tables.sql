/****** Object:  Table [dbo].[Usuario]    Script Date: 17/11/2019 20:42:30 ******/


CREATE TABLE [dbo].[Usuario](
	[cod_usuario] [int] NOT NULL,
	[nome_usu] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[senha] [nvarchar](50) NULL,
	[login] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-----------------------------------------------------------------------------------------------------------------------------------------------------
/****** Object:  Table [dbo].[Animal]    Script Date: 17/11/2019 20:42:30 ******/

CREATE TABLE [dbo].[Animal](
	[cod_pet] [int] NOT NULL,
	[nome_pet] [nvarchar](50) NULL,
	[peso_kg] [float] NULL,
	[sexo] [char](1) NULL,
	[tipo] [nvarchar](15) NULL,
	[cod_usuario] [int] NOT NULL,
	[data_nascimento] [datetime] NULL,
	[cor] [nchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_pet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [cod_usuario_pet] FOREIGN KEY([cod_usuario])
REFERENCES [dbo].[Usuario] ([cod_usuario])
GO

ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [cod_usuario_pet]
GO
----------------------------------------------------------------------------------------------------------------------------------------------

/****** Object:  Table [dbo].[Vacina]    Script Date: 17/11/2019 20:43:19 ******/

CREATE TABLE [dbo].[Vacina](
	[id] [int] NOT NULL,
	[nome_vacina] [nvarchar](50) NOT NULL,
	[data_aplicacao] [datetime] NOT NULL,
	[qtd_aplicacao] [int] NULL,
	[peso_pet_kg] [float] NULL,
	[nome_aplicante] [nvarchar](50) NULL,
	[data_prox_aplicacao] [datetime] NULL,
	[cod_pet] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Vacina]  WITH CHECK ADD  CONSTRAINT [cod_pet_key] FOREIGN KEY([cod_pet])
REFERENCES [dbo].[Animal] ([cod_pet])
GO

ALTER TABLE [dbo].[Vacina] CHECK CONSTRAINT [cod_pet_key]
GO

