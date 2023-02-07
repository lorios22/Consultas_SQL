--Cantidad de ventas por producto.
SELECT
	productos.nombre as nombre_producto,
	count(id_venta) as cantidad_ventas
FROM
	producto as productos
LEFT JOIN
	venta as ventas
	on codigo = codigo_producto
GROUP BY 
	nombre_producto;