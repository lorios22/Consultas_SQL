--Cantidad de productos comprados por cliente en el mes actual.
SELECT
	cliente.nombre as nombre_cliente,
	cliente.apellido as apellido_cliente,
	count(id_venta) as compras_este_mes
FROM
	cliente
	JOIN(
		SELECT 
			id_cliente, id_venta, fecha
		FROM
			venta where month(fecha) = month(now())
	) 
    ventas_este_mes using(id_cliente)
GROUP BY
	id_cliente;

