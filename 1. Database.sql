USE master

--DECLARANDO NOMBRE DE BASE DE DATOS
DECLARE @Nombre CHAR(9)
SET @Nombre = 'ZAPATERIA'

BEGIN
	--VALIDANDO EXISTENCIA
	IF EXISTS  (SELECT name 
				FROM sys.databases
				WHERE name = @Nombre)

	--SI EXISTE LA BORRAMOS Y LA CREAMOS NUEVAMENTE
	BEGIN	
		EXEC ('DROP DATABASE ' + @Nombre)
		EXEC ('CREATE DATABASE ' + @Nombre)
	END

	ELSE
	--SI NO EXISTE LA CREAMOS
	BEGIN
		EXEC ('CREATE DATABASE ' + @Nombre)
	END
END

GO
--CREACION DE TABLAS
USE ZAPATERIA

GO

--VALIDANDO EXISTENCIA TABLA MONEDA
IF EXISTS (SELECT name 
		   FROM sys.tables
		   WHERE name ='Moneda')

--SI EXISTE BORRAMOS DATOS PERO MANTENEMOS ESTRUCTURA
BEGIN
	TRUNCATE TABLE Moneda
END
ELSE
--SI NO EXISTE CREAMOS LA TABLA MONEDA
BEGIN
	CREATE TABLE Moneda 
	(
	  cCodMoneda char(1) primary key,
	  cDesMoneda varchar(20) not null
	)
	--AGREGAMOS UNA DESCRIPCION QUE NOS PERMITA IDENTIFICAR LA TABLA Y SUS CAMPOS
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Tabla de paises',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Moneda'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Codigo moneda',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Moneda',
		@level2type = N'COLUMN',
		@level2name = N'cCodMoneda'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Descripcion moneda',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Moneda',
		@level2type = N'COLUMN',
		@level2name = N'cDesMoneda'	

	--CONSULTANDO TABLA CREADA Y PROPIEDADES EXTENDIDAS
	SELECT  C.name "Columna",
			CONCAT(TYPE_NAME(C.xusertype),'(',C.length,')') "Tipo",
			E.value "Descripcion"
	FROM sysobjects O
	JOIN syscolumns C
		ON O.id = C.id
	 JOIN sys.extended_properties E
		ON E.major_id = O.id
		AND C.colorder = E.minor_id
	WHERE O.name = 'Moneda'
END

GO

--VALIDANDO EXISTENCIA TABLA PRODUCTO
IF EXISTS (SELECT name 
		   FROM sys.tables
		   WHERE name ='Producto')

--SI EXISTE BORRAMOS DATOS PERO MANTENEMOS ESTRUCTURA
BEGIN
	TRUNCATE TABLE Producto
END
ELSE
--SI NO EXISTE CREAMOS LA TABLA PRODUCTO
BEGIN
	CREATE TABLE Producto 
	(
	  cCodProducto char(6) primary key,
	  cNomProducto varchar(200) not null,
	  cPreProducto varchar(200) null,
	  cCodMoneda   char(1),
	  nValProducto decimal(10,2) not null,
	  --LLAVE FORANEA EN RELACION A LA TABLA MONEDA
	  FOREIGN KEY (cCodMoneda) REFERENCES Moneda(cCodMoneda)
	)
	--AGREGAMOS UNA DESCRIPCION QUE NOS PERMITA IDENTIFICAR LA TABLA Y SUS CAMPOS
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Tabla de productos',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Producto'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Codigo identificador del producto',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Producto',
		@level2type = N'COLUMN',
		@level2name = N'cCodProducto'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Nombre del producto',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Producto',
		@level2type = N'COLUMN',
		@level2name = N'cNomProducto'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Presentacion del producto',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Producto',
		@level2type = N'COLUMN',
		@level2name = N'cPreProducto'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Codigo moneda - Tabla Moneda',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Producto',
		@level2type = N'COLUMN',
		@level2name = N'cCodMoneda'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Valor del producto',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Producto',
		@level2type = N'COLUMN',
		@level2name = N'nValProducto'

	--CONSULTANDO TABLA CREADA Y PROPIEDADES EXTENDIDAS
	SELECT  C.name "Columna",
			CONCAT(TYPE_NAME(C.xusertype),'(',C.length,')') "Tipo",
			E.value "Descripcion"
	FROM sysobjects O
	JOIN syscolumns C
		ON O.id = C.id
	JOIN sys.extended_properties E
		ON E.major_id = O.id
		AND C.colorder = E.minor_id
	WHERE O.name = 'Producto'
END

GO

--VALIDANDO EXISTENCIA TABLA PAIS
IF EXISTS (SELECT name 
		   FROM sys.tables
		   WHERE name ='Pais')

--SI EXISTE BORRAMOS DATOS PERO MANTENEMOS ESTRUCTURA
BEGIN
	TRUNCATE TABLE Pais
END
ELSE
--SI NO EXISTE CREAMOS LA TABLA PAIS
BEGIN
	CREATE TABLE Pais 
	(
	  cCodPais char(3) primary key,
	  cNomPais varchar(120) not null
	)
	--AGREGAMOS UNA DESCRIPCION QUE NOS PERMITA IDENTIFICAR LA TABLA Y SUS CAMPOS
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Tabla de paises',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Pais'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Codigo identificador del pais',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Pais',
		@level2type = N'COLUMN',
		@level2name = N'cCodPais'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Nombre del pais',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Pais',
		@level2type = N'COLUMN',
		@level2name = N'cNomPais'	

	--CONSULTANDO TABLA CREADA Y PROPIEDADES EXTENDIDAS
	SELECT  C.name "Columna",
			CONCAT(TYPE_NAME(C.xusertype),'(',C.length,')') "Tipo",
			E.value "Descripcion"
	FROM sysobjects O
	JOIN syscolumns C
		ON O.id = C.id
	JOIN sys.extended_properties E
		ON E.major_id = O.id
		AND C.colorder = E.minor_id
	WHERE O.name = 'Pais'
END

GO

--VALIDANDO EXISTENCIA TABLA CLIENTE
IF EXISTS (SELECT name 
		   FROM sys.tables
		   WHERE name ='Cliente')

--SI EXISTE BORRAMOS DATOS PERO MANTENEMOS ESTRUCTURA
BEGIN
	TRUNCATE TABLE Cliente
END
ELSE
--SI NO EXISTE CREAMOS LA TABLA CLIENTE
BEGIN
	CREATE TABLE Cliente 
	(
	  cIdeCliente varchar(20) primary key,
	  cNomCliente varchar(120) not null,
	  cCodPais char(3),
	  --LLAVE FORANEA EN RELACION A LA TABLA PAIS
	  FOREIGN KEY (cCodPais) REFERENCES Pais(cCodPais)
	)
	--AGREGAMOS UNA DESCRIPCION QUE NOS PERMITA IDENTIFICAR LA TABLA Y SUS CAMPOS
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Tabla de clientes',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Cliente'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Codigo identificador del cliente',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Cliente',
		@level2type = N'COLUMN',
		@level2name = N'cIdeCliente'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Nombre del cliente',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Cliente',
		@level2type = N'COLUMN',
		@level2name = N'cNomCliente'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Pais del cliente',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Cliente',
		@level2type = N'COLUMN',
		@level2name = N'cCodPais'	

	--CONSULTANDO TABLA CREADA Y PROPIEDADES EXTENDIDAS
	SELECT  C.name "Columna",
			CONCAT(TYPE_NAME(C.xusertype),'(',C.length,')') "Tipo",
			E.value "Descripcion"
	FROM sysobjects O
	JOIN syscolumns C
		ON O.id = C.id
	JOIN sys.extended_properties E
		ON E.major_id = O.id
		AND C.colorder = E.minor_id
	WHERE O.name = 'Cliente'
END

GO

--VALIDANDO EXISTENCIA TABLA MOVIMIENTO
IF EXISTS (SELECT name 
		   FROM sys.tables
		   WHERE name ='Movimiento')

--SI EXISTE BORRAMOS DATOS PERO MANTENEMOS ESTRUCTURA
BEGIN
	TRUNCATE TABLE Movimiento
END
ELSE
--SI NO EXISTE CREAMOS LA TABLA MOVIMIENTO
BEGIN
	CREATE TABLE Movimiento 
	(
	  cCodMovimiento char(1) primary key,
	  cDesMovimiento char(7) not null
	)
	--AGREGAMOS UNA DESCRIPCION QUE NOS PERMITA IDENTIFICAR LA TABLA Y SUS CAMPOS
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Tabla tipo de movimientos',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Movimiento'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Codigo movimiento',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Movimiento',
		@level2type = N'COLUMN',
		@level2name = N'cCodMovimiento'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Descripcion movimiento',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Movimiento',
		@level2type = N'COLUMN',
		@level2name = N'cDesMovimiento'	

	--CONSULTANDO TABLA CREADA Y PROPIEDADES EXTENDIDAS
	SELECT  C.name "Columna",
			CONCAT(TYPE_NAME(C.xusertype),'(',C.length,')') "Tipo",
			E.value "Descripcion"
	FROM sysobjects O
	JOIN syscolumns C
		ON O.id = C.id
	 JOIN sys.extended_properties E
		ON E.major_id = O.id
		AND C.colorder = E.minor_id
		WHERE O.name = 'Movimiento'
END

GO

--VALIDANDO EXISTENCIA TABLA FACTURACION
IF EXISTS (SELECT name 
		   FROM sys.tables
		   WHERE name ='Facturacion')

--SI EXISTE BORRAMOS DATOS PERO MANTENEMOS ESTRUCTURA
BEGIN
	TRUNCATE TABLE Facturacion
END
ELSE
--SI NO EXISTE CREAMOS LA TABLA FACTURACION
BEGIN
	CREATE TABLE Facturacion 
	(
	  cCodFacturacion char(20) primary key,
	  cIdeCliente varchar(20) not null,
	  nImpuesto decimal(10,2) not null,
	  nCanProducto int not null,
	  nTotal  decimal(10,2) not null,
	  dFecRegistro datetime not null,
	  --LLAVE FORANEA EN RELACION A LA TABLA CLIENTE
	  FOREIGN KEY (cIdeCliente) REFERENCES Cliente(cIdeCliente)
	)
	--AGREGAMOS UNA DESCRIPCION QUE NOS PERMITA IDENTIFICAR LA TABLA Y SUS CAMPOS
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Tabla facturacion',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Facturacion'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Codigo facturacion',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Facturacion',
		@level2type = N'COLUMN',
		@level2name = N'cCodFacturacion'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Codigo cliente - Tabla Cliente',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Facturacion',
		@level2type = N'COLUMN',
		@level2name = N'cIdeCliente'	
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Impuestos',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Facturacion',
		@level2type = N'COLUMN',
		@level2name = N'nImpuesto'	
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Cantidad total de productos',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Facturacion',
		@level2type = N'COLUMN',
		@level2name = N'nCanProducto'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Total',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Facturacion',
		@level2type = N'COLUMN',
		@level2name = N'nTotal'	
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Fecha de registro',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Facturacion',
		@level2type = N'COLUMN',
		@level2name = N'dFecRegistro'	

	--CONSULTANDO TABLA CREADA Y PROPIEDADES EXTENDIDAS
	SELECT  C.name "Columna",
			CONCAT(TYPE_NAME(C.xusertype),'(',C.length,')') "Tipo",
			E.value "Descripcion"
	FROM sysobjects O
	JOIN syscolumns C
		ON O.id = C.id
	JOIN sys.extended_properties E
		ON E.major_id = O.id
		AND C.colorder = E.minor_id
	WHERE O.name = 'Facturacion'
END

GO

--VALIDANDO EXISTENCIA TABLA DETALLE FACTURACION
IF EXISTS (SELECT name 
		   FROM sys.tables
		   WHERE name ='Detalle_Facturacion')

--SI EXISTE BORRAMOS DATOS PERO MANTENEMOS ESTRUCTURA
BEGIN
	TRUNCATE TABLE Detalle_Facturacion
END
ELSE
--SI NO EXISTE CREAMOS LA TABLA DETALLE FACTURACION
BEGIN
	CREATE TABLE Detalle_Facturacion 
	(
	  nDetFacturacion int primary key identity(1,1) ,
	  cCodFacturacion char(20),
	  cCodProducto char(6),
	  nCantidad int not null,
	  --LLAVE FORANEA EN RELACION A LA TABLA FACTURACION
	  FOREIGN KEY (cCodFacturacion) REFERENCES Facturacion(cCodFacturacion),
	  --LLAVE FORANEA EN RELACION A LA TABLA PRODUCTO
	  FOREIGN KEY (cCodProducto) REFERENCES Producto(cCodProducto),
	)
	--AGREGAMOS UNA DESCRIPCION QUE NOS PERMITA IDENTIFICAR LA TABLA Y SUS CAMPOS
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Tabla detalle_facturacion',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Detalle_Facturacion'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Codigo detalle facturacion',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Detalle_Facturacion',
		@level2type = N'COLUMN',
		@level2name = N'nDetFacturacion'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Codigo facturacion - Tabla Facturacion',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Detalle_Facturacion',
		@level2type = N'COLUMN',
		@level2name = N'cCodFacturacion'	
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Codigo producto - Tabla Producto',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Detalle_Facturacion',
		@level2type = N'COLUMN',
		@level2name = N'cCodProducto'	
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Cantidad',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Detalle_Facturacion',
		@level2type = N'COLUMN',
		@level2name = N'nCantidad'
	--CONSULTANDO TABLA CREADA Y PROPIEDADES EXTENDIDAS
	SELECT  C.name "Columna",
			CONCAT(TYPE_NAME(C.xusertype),'(',C.length,')') "Tipo",
			E.value "Descripcion"
	FROM sysobjects O
	JOIN syscolumns C
		ON O.id = C.id
	JOIN sys.extended_properties E
		ON E.major_id = O.id
		AND C.colorder = E.minor_id
	WHERE O.name = 'Detalle_Facturacion'
END

GO

--VALIDANDO EXISTENCIA TABLA MONEDA
IF EXISTS (SELECT name 
		   FROM sys.tables
		   WHERE name ='Inventario')

--SI EXISTE BORRAMOS DATOS PERO MANTENEMOS ESTRUCTURA
BEGIN
	TRUNCATE TABLE Inventario
END
ELSE
--SI NO EXISTE CREAMOS LA TABLA INVENTARIO
BEGIN
	CREATE TABLE Inventario 
	(
	  nCodInventario int primary key identity(1,1),
	  cCodProducto char(6),
	  cCodMovimiento char(1),
	  dFecRegistro datetime not null,
	  nCantidad int not null,
	  --LLAVE FORANEA EN RELACION A LA TABLA MOVIMIENTO
	  FOREIGN KEY (cCodMovimiento) REFERENCES Movimiento(cCodMovimiento),
	  --LLAVE FORANEA EN RELACION A LA TABLA PRODUCTO
	  FOREIGN KEY (cCodProducto) REFERENCES Producto(cCodProducto),
	)
	--AGREGAMOS UNA DESCRIPCION QUE NOS PERMITA IDENTIFICAR LA TABLA Y SUS CAMPOS
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Tabla inventario',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Inventario'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Codigo inventario',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Inventario',
		@level2type = N'COLUMN',
		@level2name = N'nCodInventario'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Codigo producto - Tabla Producto',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Inventario',
		@level2type = N'COLUMN',
		@level2name = N'cCodProducto'	
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Codigo movimiento - Tabla Movimiento',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Inventario',
		@level2type = N'COLUMN',
		@level2name = N'cCodMovimiento'	
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Fecha Registro',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Inventario',
		@level2type = N'COLUMN',
		@level2name = N'dFecRegistro'
	EXEC sp_addextendedproperty
		@name = N'MS_Description',
		@value = N'Cantidad',
		@level0type = N'SCHEMA',
		@level0name = N'dbo',
		@level1type = N'TABLE',
		@level1name = N'Inventario',
		@level2type = N'COLUMN',
		@level2name = N'nCantidad'
	--CONSULTANDO TABLA CREADA Y PROPIEDADES EXTENDIDAS
	SELECT  C.name "Columna",
			CONCAT(TYPE_NAME(C.xusertype),'(',C.length,')') "Tipo",
			E.value "Descripcion"
	FROM sysobjects O
	JOIN syscolumns C
		ON O.id = C.id
	JOIN sys.extended_properties E
		ON E.major_id = O.id
		AND C.colorder = E.minor_id
	WHERE O.name = 'Inventario'
END


