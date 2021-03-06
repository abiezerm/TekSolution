USE [TekSolution]
GO
/****** Object:  Table [dbo].[Clientes_Direccion]    Script Date: 6/9/2022 3:07:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes_Direccion](
	[Cliente_Direccion_Numero] [int] IDENTITY(1,1) NOT NULL,
	[Casa_Numero] [varchar](50) NULL,
	[Sector] [varchar](50) NULL,
	[Provincia] [varchar](50) NULL,
	[Calle] [varchar](50) NULL,
	[Cliente_Numero] [int] NULL,
	[Registro_Fecha_Creacion] [datetime] NOT NULL,
	[Registro_Estado] [char](1) NOT NULL,
	[Registro_Usuario] [varchar](50) NOT NULL,
	[Registro_Fecha] [datetime] NOT NULL,
	[Registro_Usuario_Creacion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Clientes_Direccion] PRIMARY KEY CLUSTERED 
(
	[Cliente_Direccion_Numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes_Trans]    Script Date: 6/9/2022 3:07:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes_Trans](
	[Cliente_Numero] [int] IDENTITY(1,1) NOT NULL,
	[Cliente_Nombre] [varchar](50) NOT NULL,
	[Cliente_Apellido] [varchar](50) NOT NULL,
	[Cliente_Cedula] [varchar](11) NOT NULL,
	[Cliente_Telefono] [varchar](20) NOT NULL,
	[Registro_Estado] [char](1) NOT NULL,
	[Registro_Usuario] [varchar](50) NOT NULL,
	[Registro_Fecha] [datetime] NOT NULL,
	[Registro_Usuario_Creacion] [varchar](50) NOT NULL,
	[Registro_Fecha_Creacion] [datetime] NOT NULL,
 CONSTRAINT [PK__Clientes__8DF23CA8B9BDBC43] PRIMARY KEY CLUSTERED 
(
	[Cliente_Numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes_Direccion] ON 

INSERT [dbo].[Clientes_Direccion] ([Cliente_Direccion_Numero], [Casa_Numero], [Sector], [Provincia], [Calle], [Cliente_Numero], [Registro_Fecha_Creacion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion]) VALUES (1, N'#5', N'Buena Vista 1ra', N'Santo Domingo', N'Los cerros', 1, CAST(N'2022-06-08T18:44:30.613' AS DateTime), N'A', N'GEEKX\GEEKS', CAST(N'2022-06-08T18:44:30.613' AS DateTime), N'GEEKX\GEEKS')
INSERT [dbo].[Clientes_Direccion] ([Cliente_Direccion_Numero], [Casa_Numero], [Sector], [Provincia], [Calle], [Cliente_Numero], [Registro_Fecha_Creacion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion]) VALUES (2, N'#5', N'Buena Vista 1ra', N'Santo Domingo', N'Los cerros', 2, CAST(N'2022-06-08T18:45:10.017' AS DateTime), N'A', N'GEEKX\GEEKS', CAST(N'2022-06-08T18:45:10.017' AS DateTime), N'GEEKX\GEEKS')
INSERT [dbo].[Clientes_Direccion] ([Cliente_Direccion_Numero], [Casa_Numero], [Sector], [Provincia], [Calle], [Cliente_Numero], [Registro_Fecha_Creacion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion]) VALUES (3, N'#8', N'Los Prados', N'Distrito Nacional', N'C/ Lorenzo Despradel', 1, CAST(N'2022-06-08T18:48:04.820' AS DateTime), N'A', N'GEEKX\GEEKS', CAST(N'2022-06-08T18:48:04.820' AS DateTime), N'GEEKX\GEEKS')
INSERT [dbo].[Clientes_Direccion] ([Cliente_Direccion_Numero], [Casa_Numero], [Sector], [Provincia], [Calle], [Cliente_Numero], [Registro_Fecha_Creacion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion]) VALUES (4, N'1278', N'Orange', N'Los Angeles', N'Los Angeles', 3, CAST(N'2022-06-08T21:49:46.953' AS DateTime), N'A', N'GEEKX\GEEKS', CAST(N'2022-06-08T21:49:46.953' AS DateTime), N'GEEKX\GEEKS')
INSERT [dbo].[Clientes_Direccion] ([Cliente_Direccion_Numero], [Casa_Numero], [Sector], [Provincia], [Calle], [Cliente_Numero], [Registro_Fecha_Creacion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion]) VALUES (5, N'4', N'Herrera', N'Santo Domingo', N'Santo Domingo', 4, CAST(N'2022-06-09T01:32:08.810' AS DateTime), N'A', N'GEEKX\GEEKS', CAST(N'2022-06-09T01:32:08.810' AS DateTime), N'GEEKX\GEEKS')
INSERT [dbo].[Clientes_Direccion] ([Cliente_Direccion_Numero], [Casa_Numero], [Sector], [Provincia], [Calle], [Cliente_Numero], [Registro_Fecha_Creacion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion]) VALUES (6, N'#12', N'Cien fuego', N'Santiago', N'Santiago', 5, CAST(N'2022-06-09T01:33:48.890' AS DateTime), N'A', N'GEEKX\GEEKS', CAST(N'2022-06-09T01:33:48.890' AS DateTime), N'GEEKX\GEEKS')
INSERT [dbo].[Clientes_Direccion] ([Cliente_Direccion_Numero], [Casa_Numero], [Sector], [Provincia], [Calle], [Cliente_Numero], [Registro_Fecha_Creacion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion]) VALUES (7, N'5', N'/', N'SD', N'SD', 6, CAST(N'2022-06-09T01:37:37.660' AS DateTime), N'A', N'GEEKX\GEEKS', CAST(N'2022-06-09T01:37:37.660' AS DateTime), N'GEEKX\GEEKS')
INSERT [dbo].[Clientes_Direccion] ([Cliente_Direccion_Numero], [Casa_Numero], [Sector], [Provincia], [Calle], [Cliente_Numero], [Registro_Fecha_Creacion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion]) VALUES (8, N'87', N'/', N'NJ', N'NJ', 7, CAST(N'2022-06-09T01:38:39.230' AS DateTime), N'A', N'GEEKX\GEEKS', CAST(N'2022-06-09T01:38:39.230' AS DateTime), N'GEEKX\GEEKS')
INSERT [dbo].[Clientes_Direccion] ([Cliente_Direccion_Numero], [Casa_Numero], [Sector], [Provincia], [Calle], [Cliente_Numero], [Registro_Fecha_Creacion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion]) VALUES (9, N'87', N'/', N'NJ', N'NJ', 8, CAST(N'2022-06-09T01:38:59.717' AS DateTime), N'A', N'GEEKX\GEEKS', CAST(N'2022-06-09T01:38:59.717' AS DateTime), N'GEEKX\GEEKS')
INSERT [dbo].[Clientes_Direccion] ([Cliente_Direccion_Numero], [Casa_Numero], [Sector], [Provincia], [Calle], [Cliente_Numero], [Registro_Fecha_Creacion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion]) VALUES (12, N'4', N'Lorem ipsum', N'Lorem ipsum', N'Lorem ipsum', 6, CAST(N'2022-06-09T02:10:40.247' AS DateTime), N'A', N'GEEKX\GEEKS', CAST(N'2022-06-09T02:10:40.247' AS DateTime), N'GEEKX\GEEKS')
INSERT [dbo].[Clientes_Direccion] ([Cliente_Direccion_Numero], [Casa_Numero], [Sector], [Provincia], [Calle], [Cliente_Numero], [Registro_Fecha_Creacion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion]) VALUES (13, N'4', N'Villa Mella', N'SD', N'SD', 6, CAST(N'2022-06-09T02:11:08.640' AS DateTime), N'I', N'GEEKX\GEEKS', CAST(N'2022-06-09T02:11:08.640' AS DateTime), N'GEEKX\GEEKS')
SET IDENTITY_INSERT [dbo].[Clientes_Direccion] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes_Trans] ON 

INSERT [dbo].[Clientes_Trans] ([Cliente_Numero], [Cliente_Nombre], [Cliente_Apellido], [Cliente_Cedula], [Cliente_Telefono], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion], [Registro_Fecha_Creacion]) VALUES (1, N'Xavier', N'Mejia', N'40222633600', N'8099728439', N'A', N'GEEKX\GEEKS', CAST(N'2022-06-08T18:44:30.613' AS DateTime), N'GEEKX\GEEKS', CAST(N'2022-06-08T18:44:30.613' AS DateTime))
INSERT [dbo].[Clientes_Trans] ([Cliente_Numero], [Cliente_Nombre], [Cliente_Apellido], [Cliente_Cedula], [Cliente_Telefono], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion], [Registro_Fecha_Creacion]) VALUES (2, N'Xavier', N'Mejia', N'40222633600', N'8099728439', N'A', N'GEEKX\GEEKS', CAST(N'2022-06-08T18:45:10.007' AS DateTime), N'GEEKX\GEEKS', CAST(N'2022-06-08T18:45:10.007' AS DateTime))
INSERT [dbo].[Clientes_Trans] ([Cliente_Numero], [Cliente_Nombre], [Cliente_Apellido], [Cliente_Cedula], [Cliente_Telefono], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion], [Registro_Fecha_Creacion]) VALUES (3, N'John', N'Doe', N'123434374', N'4016012345', N'A', N'GEEKX\GEEKS', CAST(N'2022-06-08T21:49:46.937' AS DateTime), N'GEEKX\GEEKS', CAST(N'2022-06-08T21:49:46.937' AS DateTime))
INSERT [dbo].[Clientes_Trans] ([Cliente_Numero], [Cliente_Nombre], [Cliente_Apellido], [Cliente_Cedula], [Cliente_Telefono], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion], [Registro_Fecha_Creacion]) VALUES (4, N'John', N'Smith', N'45353453453', N'2453453453', N'A', N'GEEKX\GEEKS', CAST(N'2022-06-09T01:32:08.770' AS DateTime), N'GEEKX\GEEKS', CAST(N'2022-06-09T01:32:08.770' AS DateTime))
INSERT [dbo].[Clientes_Trans] ([Cliente_Numero], [Cliente_Nombre], [Cliente_Apellido], [Cliente_Cedula], [Cliente_Telefono], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion], [Registro_Fecha_Creacion]) VALUES (5, N'Carlos', N'Slim', N'34523453453', N'2342342343', N'A', N'GEEKX\GEEKS', CAST(N'2022-06-09T01:33:48.887' AS DateTime), N'GEEKX\GEEKS', CAST(N'2022-06-09T01:33:48.887' AS DateTime))
INSERT [dbo].[Clientes_Trans] ([Cliente_Numero], [Cliente_Nombre], [Cliente_Apellido], [Cliente_Cedula], [Cliente_Telefono], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion], [Registro_Fecha_Creacion]) VALUES (6, N'Alan', N'Turing', N'00132423423', N'4013773737', N'A', N'GEEKX\GEEKS', CAST(N'2022-06-09T01:37:37.657' AS DateTime), N'GEEKX\GEEKS', CAST(N'2022-06-09T01:37:37.657' AS DateTime))
INSERT [dbo].[Clientes_Trans] ([Cliente_Numero], [Cliente_Nombre], [Cliente_Apellido], [Cliente_Cedula], [Cliente_Telefono], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion], [Registro_Fecha_Creacion]) VALUES (7, N'Elon', N'Musk', N'89789789789', N'6013723237', N'A', N'GEEKX\GEEKS', CAST(N'2022-06-09T01:38:39.223' AS DateTime), N'GEEKX\GEEKS', CAST(N'2022-06-09T01:38:39.223' AS DateTime))
INSERT [dbo].[Clientes_Trans] ([Cliente_Numero], [Cliente_Nombre], [Cliente_Apellido], [Cliente_Cedula], [Cliente_Telefono], [Registro_Estado], [Registro_Usuario], [Registro_Fecha], [Registro_Usuario_Creacion], [Registro_Fecha_Creacion]) VALUES (8, N'Steve', N'Jobs', N'89789789789', N'6013723237', N'A', N'GEEKX\GEEKS', CAST(N'2022-06-09T01:38:59.713' AS DateTime), N'GEEKX\GEEKS', CAST(N'2022-06-09T01:38:59.713' AS DateTime))
SET IDENTITY_INSERT [dbo].[Clientes_Trans] OFF
GO
ALTER TABLE [dbo].[Clientes_Direccion] ADD  CONSTRAINT [DF_Clientes_Direccion_Registro_Fecha_Creacion]  DEFAULT (getdate()) FOR [Registro_Fecha_Creacion]
GO
ALTER TABLE [dbo].[Clientes_Direccion] ADD  CONSTRAINT [DF_Clientes_Direccion_Registro_Estado]  DEFAULT ('A') FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Clientes_Direccion] ADD  CONSTRAINT [DF_Clientes_Direccion_Registro_Usuario]  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Clientes_Direccion] ADD  CONSTRAINT [DF_Clientes_Direccion_Registro_Fecha]  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Clientes_Direccion] ADD  CONSTRAINT [DF_Clientes_Direccion_Registro_Usuario_Creacion]  DEFAULT (suser_sname()) FOR [Registro_Usuario_Creacion]
GO
ALTER TABLE [dbo].[Clientes_Trans] ADD  CONSTRAINT [DF_Clientes_Trans_Registro_Estado]  DEFAULT ('A') FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Clientes_Trans] ADD  CONSTRAINT [DF_Clientes_Trans_Registro_Usuario]  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Clientes_Trans] ADD  CONSTRAINT [DF_Clientes_Trans_Registro_Fecha]  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Clientes_Trans] ADD  CONSTRAINT [DF_Clientes_Trans_Registro_Usuario_Creacion]  DEFAULT (suser_sname()) FOR [Registro_Usuario_Creacion]
GO
ALTER TABLE [dbo].[Clientes_Trans] ADD  CONSTRAINT [DF_Clientes_Trans_Registro_Fecha_Creacion]  DEFAULT (getdate()) FOR [Registro_Fecha_Creacion]
GO
ALTER TABLE [dbo].[Clientes_Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Direccion_Clientes_Trans] FOREIGN KEY([Cliente_Numero])
REFERENCES [dbo].[Clientes_Trans] ([Cliente_Numero])
GO
ALTER TABLE [dbo].[Clientes_Direccion] CHECK CONSTRAINT [FK_Clientes_Direccion_Clientes_Trans]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Cliente_Direccion_Eliminar]    Script Date: 6/9/2022 3:07:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Proc_Cliente_Direccion_Eliminar](
@IdDireccion int 
)
AS 
BEGIN

update Clientes_Direccion 
set Registro_Estado = 'I'
where Cliente_Direccion_Numero = @IdDireccion;
END;
GO
/****** Object:  StoredProcedure [dbo].[Proc_Cliente_Editar]    Script Date: 6/9/2022 3:07:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Proc_Cliente_Editar](
 @Cliente_Numero int,
 @Cliente_Nombre varchar(50),
 @Cliente_Apellido varchar(50),
 @Cliente_Cedula varchar(11),
 @Cliente_Telefono varchar(20)
 --@Casa_Numero varchar(50),
 --@Sector varchar(50),
 --@Provincia varchar(50),
 --@Calle varchar(50)
)
as
Begin

update Clientes_Trans 
   set Cliente_Nombre=@Cliente_Nombre,
		Cliente_Apellido =@Cliente_Apellido,
		Cliente_Cedula =@Cliente_Cedula,
		Cliente_Telefono =@Cliente_Telefono
	--Casa_Numero =@Casa_Numero,
	--Sector =@Sector,
	--Provincia =@Provincia,
	--Calle=@Calle
where Cliente_Numero =@Cliente_Numero

END;
GO
/****** Object:  StoredProcedure [dbo].[Proc_Cliente_Eliminar]    Script Date: 6/9/2022 3:07:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[Proc_Cliente_Eliminar](
@IdCliente INT 
)
AS 
BEGIN

update Clientes_Trans 
set Registro_Estado = 'I'
where Cliente_Numero = @IdCliente;
END;
GO
/****** Object:  StoredProcedure [dbo].[Proc_Clientes_Direccion_Inserta]    Script Date: 6/9/2022 3:07:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[Proc_Clientes_Direccion_Inserta] 1, #8,'Los Prados', 'Distrito Nacional','C/ Lorenzo Despradel'
CREATE PROCEDURE [dbo].[Proc_Clientes_Direccion_Inserta](
 @Cliente_Numero int,
 @Casa_Numero varchar(50),
 @Sector varchar(50),
 @Provincia varchar(50),
 @Calle varchar(50)
)
AS
BEGIN
INSERT INTO Clientes_Direccion
(
 Cliente_Numero,
 Casa_Numero ,
 Sector ,
 Provincia ,
 Calle ,
 Registro_Fecha_Creacion,
 Registro_Estado,
 Registro_Fecha
)
VALUES
(
 @Cliente_Numero,
 @Casa_Numero,
 @Sector ,
 @Provincia ,
 @Calle ,
 GETDATE(),
 'A',
 GETDATE()
)
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Clientes_Direccion_Lista]    Script Date: 6/9/2022 3:07:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Proc_Clientes_Direccion_Lista](
--Proc_Clientes_Direccion_Lista 'Xavier'
@Cliente_Numero int null
)
AS
BEGIN

SELECT	CT.Cliente_Numero,
		CD.Cliente_Direccion_Numero,
		CD.Casa_Numero,
		CD.Sector,
		CD.Provincia,
		CD.Calle
  FROM  Clientes_Direccion CD WITH(NOLOCK)
  INNER JOIN Clientes_Trans CT
		ON    CT.Cliente_Numero = CD.Cliente_Numero
		WHERE CD.Registro_Estado ='A' and @Cliente_Numero = CD.Cliente_Numero 

END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Clientes_Inserta]    Script Date: 6/9/2022 3:07:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Proc_Clientes_Inserta 'Xavier','Mejia', '40222633600','8099728439','#5','Buena Vista 1ra','Santo Domingo','Los cerros'



CREATE PROCEDURE [dbo].[Proc_Clientes_Inserta]
(
 @Cliente_Nombre varchar(50),
 @Cliente_Apellido varchar(50),
 @Cliente_Cedula varchar(11),
 @Cliente_Telefono varchar(20),
 @Casa_Numero varchar(50),
 @Sector varchar(50),
 @Provincia varchar(50),
 @Calle varchar(50)
)
AS 
BEGIN
declare @Id int
INSERT  INTO Clientes_Trans
(
Cliente_Nombre,
Cliente_Apellido,
Cliente_Cedula,
Cliente_Telefono,
Registro_Fecha_Creacion,
Registro_Estado,
Registro_Fecha
)
--OUTPUT INSERTED.Cliente_Numero 
VALUES
(
@Cliente_Nombre,
@Cliente_Apellido ,
@Cliente_Cedula,
@Cliente_Telefono,
GETDATE(),
'A',
GETDATE()
)
 --@@identity  
 select @id =Cliente_Numero from Clientes_Trans
 EXEC Proc_Clientes_Direccion_Inserta  @id,
										@Casa_Numero,
										@Sector,
										@Provincia,
										@Calle

END

GO
/****** Object:  StoredProcedure [dbo].[Proc_Clientes_Lista]    Script Date: 6/9/2022 3:07:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_Clientes_Lista](
--Proc_Clientes_Lista 'Xavier'
@Criterio varchar(50) null
)
AS
BEGIN

SELECT	CT.Cliente_Numero,
		CT.Cliente_Nombre,
		CT.Cliente_Apellido,
		CT.Cliente_Cedula,
		CT.Cliente_Telefono
		--CD.Casa_Numero,
		--CD.Sector,
		--CD.Provincia,
		--CD.Calle
  FROM  Clientes_Trans CT WITH(NOLOCK)
  --INNER JOIN  Clientes_Direccion CD
		--ON    CT.Cliente_Numero = CD.Cliente_Numero
		WHERE CT.Registro_Estado ='A' and ( ( CT.Cliente_Numero like '%'+ @Criterio + '%') or ( CT.Cliente_Nombre like '%'+ @Criterio + '%'))

END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Direccion_Editar]    Script Date: 6/9/2022 3:07:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Proc_Direccion_Editar](
 @Cliente_Direccion_Numero int,
 @Casa_Numero varchar(50),
 @Sector varchar(50),
 @Provincia varchar(50),
 @Calle varchar(50)

)
as
Begin

update Clientes_Direccion 
   set Casa_Numero=@Casa_Numero,
		Sector =@Sector,
		Provincia =@Provincia,
		Calle =@Calle

where Cliente_Direccion_Numero =@Cliente_Direccion_Numero

END;
GO
