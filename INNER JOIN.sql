
use SPEED_RACER
/*inner join de la tabla Cliente con la tabla Venta*/

select id_Cliente
from Cliente c
inner join Venta v
ON c.id_Cliente = v.idCliente

go

/* inner join de la Tabla detalle_factura con la tabla Vehiculo*/

select idArticulo
from detalle_factura df
inner join Vehiculo v
on df.idArticulo = v.idVehiculo

go
select precio
from detalle_factura  df
inner join Vehiculo v
on df.precio = v.precio_venta

/*inner join de la tabla detalle_factura con a tabla Cliente*/

select idPersona
from detalle_factura df
inner join Cliente c
on df.idPersona = c.id_Cliente





