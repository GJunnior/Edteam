USE ZAPATERIA
/*------------------------------------------------
	1.- FACTURACION DE UN CLIENTE EN ESPECIFICO
-------------------------------------------------*/

--CREACION DE VARIABLE CON EL CODIGO DEL CLIENTE
DECLARE @cCodCliente varchar(20)

--ASIGNANDO UN CLIENTE EN ESPECIFICO
SET @cCodCliente = '17062914'

--DATOS GENERALES DE FACTURACION
SELECT	FECHA				= CAST(F.dFecRegistro AS DATE),
		CLIENTE				= C.cNomCliente,
		IMPUESTO			= SUM(F.nImpuesto),
		CANTIDAD_PRODUCTOS	= SUM(F.nCanProducto),
		TOTAL				= SUM(F.nTotal) 
FROM Cliente C
JOIN Facturacion F
	ON c.cIdeCliente = F.cIdeCliente
WHERE C.cIdeCliente = @cCodCliente
GROUP BY F.dFecRegistro,C.cNomCliente

--DETALLE FACTURACION - LISTADO DE PRODUCTOS COMPRADOS
SELECT cCodFacturacion,dFecRegistro
INTO #TmpCodFacturacion
FROM Facturacion
WHERE cIdeCliente = '17062914'

SELECT	CODIGO_PRODUCTO = P.cCodProducto,
		NOMBRE_PRODUCTO = P.cNomProducto,
		CANTIDAD		= D.nCantidad,
		PRECIO_PRODUCTO = P.nValProducto,
		SUBTOTAL		= D.nCantidad * P.nValProducto, 
		FECHA_COMPRA	= CAST(F.dFecRegistro as DATE)
FROM Detalle_Facturacion D
JOIN #TmpCodFacturacion F
	ON D.cCodFacturacion = F.cCodFacturacion
JOIN Producto P 
	ON D.cCodProducto = P.cCodProducto

DROP TABLE #TmpCodFacturacion

GO

/*------------------------------------------------
	2.- FACTURACION DE UN PRODUCTO EN ESPECIFICO
-------------------------------------------------*/

--OBTENIENDO TOP 1 PRODUCTO MAS VENDIDO
SELECT TOP 1 cCodProducto,
	   SUM(nCantidad) Cantidad
INTO #TmpProducto
FROM  Detalle_Facturacion
GROUP BY cCodProducto
ORDER BY Cantidad DESC

--FACTURACION DEL PRODUCTO TOP
SELECT CODIGO			= P.cCodProducto,
	   PRODUCTO			= P.cNomProducto,
	   CANTIDAD			= T.Cantidad,
	   PRECIO_PRODUCTO	= P.nValProducto,
	   TOTAL			= T.Cantidad  * P.nValProducto
FROM Producto P
JOIN #TmpProducto T
	on P.cCodProducto = T.cCodProducto

DROP TABLE #TmpProducto

GO

/*------------------------------------------------
	3.- FACTURACION DE UN PRODUCTO EN ESPECIFICO
-------------------------------------------------*/
--CREACION DE VARIABLE CON LOS RANGOS DE FECHAS
DECLARE @FechaInicio datetime,
		@FechaFin datetime

--ASIGNACION DE VALORES A LAS VARIABLES
SET @FechaInicio = '20200115'
SET	@FechaFin	 = '20200215'

--FACTURACION ENTRE EL RANGO DE FECHAS
SELECT FECHA_INICIO			= @FechaInicio,
	   FECHA_FIN			= @FechaFin,
	   CANTIDAD_PRODUCTOS	= SUM(nCanProducto),
	   TOTAL				= SUM(nTotal)
FROM Facturacion
WHERE dFecRegistro >= @FechaInicio
	AND dFecRegistro <= @FechaFin

GO

/*------------------------------------------------
	4.- FACTURACION CLIENTES UNICOS
-------------------------------------------------*/
--OBTENIENDO VISITAS A LA ZAPATERIA 
SELECT cCodFacturacion,
	   cIdeCliente,
	   dFecRegistro,
	   RANK () OVER (
					PARTITION BY cIdeCliente 
					ORDER BY dFecRegistro ASC) Visita
INTO #TmpVisita
FROM Facturacion

--OBTENIENDO LISTADO DE CLIENTES
SELECT	CLIENTE = C.cNomCliente, 
		PAIS	= P.cNomPais
FROM Cliente C
JOIN #TmpVisita V
	ON C.cIdeCliente = V.cIdeCliente
JOIN Pais P
	ON C.cCodPais = P.cCodPais
WHERE V.Visita = 1

DROP TABLE #TmpVisita
