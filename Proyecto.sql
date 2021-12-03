Create database SPEED_RACER 

use SPEED_RACER
 
create table Cliente(
id_Cliente int primary key identity (1,1)not null,
nombres varchar(50) not null,
apellidos varchar(50)not null,
departamento varchar (50) not null,
direccion varchar(100) not null,
telefono int unique not null,
email varchar(50) not null,
num_tarjeta decimal unique  not null,
CVV int not null,
fecha_vencimiento varchar (50),
);



create table Vehiculo(
IdVehiculo integer primary key identity(1,1) not null,
Marca varchar(50) not null,
modelo varchar(50) not null,
color varchar (50) not null, 
NumSerial Int not null,
precio_venta money,
stock int not null,
descripcion varchar(256) null,
);
GO

GO
 
create table Venta(
idVenta int primary key identity(1,1) not null,
idCliente int not null,
num_comprobante varchar (10) not null,
fecha_hora datetime default getdate(),
impuesto decimal (4,2) not null,
total decimal (11,2) not null,
FOREIGN KEY (idCliente) REFERENCES Cliente (id_Cliente)
);

create table detalle_factura(
idDetalle_venta integer primary key identity (1,1),
idVenta int not null,
idArticulo int not null,
idPersona int not null,
cantidad int not null,
precio decimal(11,2) not null,
descuento decimal(11,2) not null,
FOREIGN KEY (idVenta) REFERENCES Venta (idVenta),
FOREIGN KEY (idArticulo) REFERENCES Vehiculo (IdVehiculo),
FOREIGN KEY (idPersona) REFERENCES Cliente (id_Cliente)
);


