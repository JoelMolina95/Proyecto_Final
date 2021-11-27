create database SPEED_RACER;

use SPEED_RACER;

create table Cliente(
id_Cliente int primary key identity (1,1)not null,
nombres varchar(50) not null,
apellidos varchar(50)not null,
departamento varchar (50) not null,
direccion varchar(100) not null,
telefono int not null, 
email varchar(50) not null
);



select * from Cliente
create table Vehiculo(
IdVehiculo integer primary key identity(1,1) not null,
IdMarca varchar(50) not null,
modelo varchar(50) not null,
codigo varchar(50) null,
nombre varchar(100) not null unique,
precio_venta decimal(11,2) not null,
stock integer not null,
descripcion varchar(256) null,
);
 select *from Vehiculo

  
--Tabla venta
create table Venta(
idVenta integer primary key identity(1,1) not null,
idCliente integer not null,
num_comprobante varchar (10) not null,
fecha_hora datetime not null,
impuesto decimal (4,2) not null,
total decimal (11,2) not null,
FOREIGN KEY (idCliente) REFERENCES Cliente (id_Cliente)
);

select * from Venta

drop table Venta

create table detalle_factura(
idDetalle_venta integer primary key identity (1,1),
idVenta integer not null,
idArticulo integer not null,
idPersona integer not null,
cantidad integer not null,
precio decimal(11,2) not null,
descuento decimal(11,2) not null,
FOREIGN KEY (idVenta) REFERENCES Venta (idVenta),
FOREIGN KEY (idArticulo) REFERENCES Vehiculo (IdVehiculo),
FOREIGN KEY (idPersona) REFERENCES Cliente (id_Cliente)
);

select * from detalle_factura

