-- Rubros que no tienen ventas en los últimos 2 meses.
SELECT
	rub.rubro
FROM
	rubro as rub join producto as prod using(id_rubro)
	join venta as vent on codigo = codigo_producto
WHERE
	vent.fecha < date(now() - interval 2 month)
    and rub.rubro not in(
      select
        rub.rubro
      from
        rubro as rub join producto as prod using(id_rubro)
        join venta as vent on codigo = codigo_producto
      where
        vent.fecha >= date(now() - interval 2 month)
      group by
        id_rubro
    )
GROUP BY
	id_rubro;