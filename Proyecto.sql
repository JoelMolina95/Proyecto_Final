Create database SPEED_RACER 

use SPEED_RACER


create table Cliente(
id_Cliente int primary key identity (1,1)not null,
nombres varchar(50) not null,
apellidos varchar(50)not null,
departamento varchar (50) not null,
direccion varchar(100) not null,
telefono int not null, 
email varchar(50) not null
);
insert into Cliente values('Jose Mauricio','Torres Hernandez','Chalatenango','3ra Avenida Sur',66998855,'Josetrrs@gmail.com')
insert into Cliente values('Monica Alejandra','Flores Lemus','Chalatenango','Av Libertad',74952903,'Moniclemus@gmail.com')
insert into Cliente values('Francisco Javier','Gutierrez Benitez','Chalatenango','Av. Luciano Morales',34759210,'Javibntz@gmail.com')
insert into Cliente values('Felix Ricardo','Ochoa Morales','Chalatenango','6a Avenida Sur',23490185,'Felixochoa@gmail.com')
insert into Cliente values('Maria Eugenia','Benitez Lopez','Chalatenango','C. a Colonia San Francisco',56910429,'Maribntz@gmail.com')
insert into Cliente values('Bryan Jose','Torres Rodriguez','Chalatenango','Av Liberta',39185029,'Bryantorres@gmail.com')

select *from Cliente

drop table Cliente

create table Vehiculo(
IdVehiculo integer primary key identity(1,1) not null,
Marca varchar(50) not null,
modelo varchar(50) not null,
color varchar (50) not null, 
NumSerial Int not null,
precio_venta money,
stock integer not null,
descripcion varchar(256) null,
);
drop table Vehiculo
GO
INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('BMW','M340i XDribe','azul', 652, $15000, 5, 'Motor 4 cilindros 2400 Vidrios electricos Combustible Desiel 4x4')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Fort','Mustang GT','Rojo', 787, $27205, 3, 'Aceleración 0 a 100 km: 4 s')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Chevrolet ','Camaro SS','Negro', 985, $1148400, 3, '455 CABALLOS DE POTENCIA, TRANSMISIÓN AUTOMÁTICADE 10 VELOCIDADES')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Audi','R8','Azul', 652, $1150400, 2, 'Aceleración 0 a 100 km: 3.5 s')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Ferrari ','612 Scaglietti','Negro', 652, $240952, 2, 'Aceleración 0 a 100 km: 4.2 s.')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Ferrari','Enzo','Rojo', 814, $2640000, 1, 'Aceleración 0 a 100 km: 3.3 s')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Lamborghini ','Aventador Coupé','Verde', 352, $422290, 2, ' Aceleración 0 a 100 km: 2.9 s')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Nissan ','GTR','Rojo', 592, $113540, 3, 'Aceleración 0 a 100 km: 2.5 s')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Tesla ','Model 3 eléctrico','Rojo', 912, $49000, 4, 'de 0 a 100km/h en 5,6 segundos')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Ford ','Mustang Shelby GT500','Azul', 789, $2415000, 1, 'transmisión de doble embrague Tremec TR-9070')

select *from Vehiculo
GO

create table Venta(
idVenta integer primary key identity(1,1) not null,
idCliente integer not null,
num_comprobante varchar (10) not null,
fecha_hora datetime default getdate(),
impuesto decimal (4,2) not null,
total decimal (11,2) not null,
FOREIGN KEY (idCliente) REFERENCES Cliente (id_Cliente)
);

select *from Venta



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

select *from detalle_factura

