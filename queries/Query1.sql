--Todos los productos del rubro "librería", creados hoy.
SELECT
	productos.nombre as nombre_producto, producto.fecha_creacion, rub.rubro
FROM 
	producto as productos join rubro as rub using(id_rubro)
WHERE 
	rubro = "librería" and fecha_creacion = date(now());


