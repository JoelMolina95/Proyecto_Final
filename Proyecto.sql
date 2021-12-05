Create database SPEED_RACER 

use SPEED_RACER

select *from Cliente 
 
 /* En la tabla Cliente se encuentra primary key el cual sera el id del cliente
 ademas se muestran datos del cliente como son sua nombre y apellidos etc. */


create table Cliente(
id_Cliente int primary key identity (1,1)not null,
nombres varchar(50) not null,
apellidos varchar(50)not null,
departamento varchar (50) not null,
direccion varchar(100) not null,
telefono int unique not null,
email varchar(50) not null,
num_tarjeta decimal  not null,
CVV int not null,
fecha_vencimiento varchar (50),
);

select departamento from Cliente


/* En la tabla Vehiculo establecimos una llave primary key que es el id con
auto-incrementomademas se agragaron lo que son los atributos y otras 
caracteristicas*/

create table Vehiculo(
IdVehiculo int primary key identity(1,1) not null,
Marca varchar(50) not null,
modelo varchar(50) not null,
color varchar (50) not null, 
NumSerial Int not null,
precio_venta money,
stock int not null,
descripcion varchar(256) null,
);

select *from Vehiculo

select *from Cliente

select * from Vehiculo

GO

 /* Se creo la tabla Venta agregando un idVenta como primary key con auto-incremento
 y un idCliente como foreign key*/

create table Venta(
idVenta int primary key identity(1,1) not null,
idCliente int not null,
num_comprobante varchar (10) not null,
fecha_hora datetime default getdate(),
impuesto decimal (4,2) not null,
total decimal (11,2) not null,
FOREIGN KEY (idCliente) REFERENCES Cliente (id_Cliente)
);

select *from Venta

/* Como al cliente se le entregara una factura se creo la tabla detalles_factura
la cual contiene una llave primaria y hace referencias a las tablas de Venta, 
de Vehiculos, y Cliente estableciendolas como llaves foraneas esto ya que para
generar la factura hay que rellenarla con datos del cliente*/

create table detalle_factura(
idDetalle_venta integer primary key identity (1,1),
idVenta int not null,
idArticulo int not null,
idPersona int not null,
cantidad int not null,
precio decimal(11,2) not null,
FOREIGN KEY (idVenta) REFERENCES Venta (idVenta),
FOREIGN KEY (idArticulo) REFERENCES Vehiculo (IdVehiculo),
FOREIGN KEY (idPersona) REFERENCES Cliente (id_Cliente)
);


select * from detalle_factura



