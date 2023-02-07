--Monto total vendido por cliente (mostrar nombre del cliente y monto).
SELECT
	cliente.nombre as nombre_cliente, sum(venta.cantidad*venta.precio_unitario) as monto_total
FROM 
	cliente join venta using(id_cliente)
GROUP BY
	id_cliente;