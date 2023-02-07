-- Ventas que tienen al menos un producto del rubro "bazar".
SELECT
	id_venta,rubro
FROM
	(SELECT
			ventas.id_venta as id_venta,
			rub.rubro as rubro
		FROM
			venta as ventas
		JOIN
			producto as productos
			on codigo_producto = codigo
		JOIN
			rubro as rub
			using(id_rubro)
  ) ventas_por_rubro
WHERE
	rubro = "bazar";

