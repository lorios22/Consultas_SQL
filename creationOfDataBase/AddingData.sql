use DUX_DATABASE;

insert into
	rubro (rubro)
values
	("librería"),
	("ferreteria"),
	("bazar");

insert into
	producto (codigo, nombre, fecha_creacion, id_rubro)
values
	("123", "cartuchera", '2023-02-07', 1),
	("124", "lapicera", '2022-12-16', 1),
	("125", "regla", '2023-02-07', 1),
	("126", "lapiz", '2023-02-07', 1),
	("127", "escuadra", '2022-10-18', 1),
	("128", "repasador", '2023-01-28', 3),
	("129", "taza", '2022-11-22', 3),
	("130", "plato", '2022-12-05', 3),
	("131", "espejo", '2023-02-07', 3),
	("132", "destornillador", '2023-02-03', 2),
	("133", "pinza", '2022-11-10', 2),
	("134", "amoladora", '2023-02-07', 3);

insert into
	cliente (nombre, apellido, cuit)
values
	("Josefina", "Bogliatti", '1999-08-03'),
	("Alberto", "Dominguez", '1990-10-13'),
	("Nelson", "Altamirano", '1975-07-05'),
	("Mabel", "Pompeo", '1979-12-10'),
	("Salvador", "Rodriguez", '2003-04-29');

insert into
	venta (codigo_producto, fecha, cantidad, precio_unitario, id_cliente)
values
	("123", '2023-02-07', 8, 30, 2),
	("124", '2022-12-16', 6, 4, 1),
	("125", '2023-02-07', 9, 8, 3),
	("126", '2022-10-18', 5, 7, 1),
	("127", '2023-01-28', 5, 7, 4),
	("128", '2022-11-22', 1, 20, 2),
	("129", '2022-12-05', 1, 78, 1),
	("130", '2023-02-07', 1, 95, 2),
	("131", '2023-02-03', 2, 150, 2);

