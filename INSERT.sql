/*INSERT*/ 

use SPEED_RACER

INSERT INTO Cliente (nombres,apellidos,departamento,direccion,telefono,email,num_tarjeta,CVV,fecha_vencimiento)
VALUES ('Jose Mauricio','Torres Hernandez','Chalatenango','3ra Avenida Sur',66998855,'Josetrrs@gmail.com',1847291840283749,285,'2020-05-31')

INSERT INTO Cliente (nombres,apellidos,departamento,direccion,telefono,email,num_tarjeta,CVV,fecha_vencimiento)
VALUES('Monica Alejandra','Flores Lemus','Chalatenango','Av Libertad',74952903,'Moniclemus@gmail.com',2817493840194837,392,'2020-06-12')

INSERT INTO Cliente (nombres,apellidos,departamento,direccion,telefono,email,num_tarjeta,CVV,fecha_vencimiento)
VALUES('Francisco Javier','Gutierrez Benitez','Chalatenango','Av. Luciano Morales',34759210,'Javibntz@gmail.com',2819309058490291,291,'2020-06-13')

INSERT INTO Cliente (nombres,apellidos,departamento,direccion,telefono,email,num_tarjeta,CVV,fecha_vencimiento)
VALUES('Felix Ricardo','Ochoa Morales','Chalatenango','6a Avenida Sur',23490185,'Felixochoa@gmail.com',0019283758493019,209,'2020-06-14')

INSERT INTO Cliente (nombres,apellidos,departamento,direccion,telefono,email,num_tarjeta,CVV,fecha_vencimiento)
VALUES('Maria Eugenia','Benitez Lopez','Chalatenango','C. a Colonia San Francisco',56910429,'Maribntz@gmail.com',1890284938172930,193,'2020-06-15')

INSERT INTO Cliente (nombres,apellidos,departamento,direccion,telefono,email,num_tarjeta,CVV,fecha_vencimiento)
VALUES('Bryan Jose','Torres Rodriguez','Chalatenango','Av Liberta',39185029,'Bryantorres@gmail.com',8958651009987654,150,'2020-06-16')

GO

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Chevrolet ','Camaro SS','Negro', 985, $1148400, 3, '455 Caballos de potencia, Transmision automatica de 10 velocidades.')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Ferrari','Enzo','Rojo', 814, $2640000, 1, 'Velocidad máxima: 336 km/h, Consumo de combustible: 3,4 km/l en ciudad y 5,1 km/l en ruta')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Lamborghini ','Aventador Coupé','Verde', 352, $422290, 2, 'Velocidad máxima: 336 km/h, Consumo de combustible: 3,4 km/l en ciudad y 5,1 km/l en ruta')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Ford','Mustang GT','Rojo', 787, $50205, 3, 'Tiene un motor de 533 caballos de potencia, tracción trasera y caja de cambios automática.')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Nissan ','GTR','Rojo', 592, $113540, 3, 'Motor V6 DOHC turbocargado doble de 3.8 litros y 24 válvulas, con transmisión integrante de eje transversal independiente')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Audi','R8','Azul', 652, $1150400, 2, 'El Audi R8 cuenta con un motor V10 de 5.2 litros con el que alcanza una velocidad máxima de 330 km/h. Sistema de frenado Nissan/Brembo')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Tesla ','Model 3 eléctrico','Rojo', 912, $49000, 4, 'Motor V6 DOHC turbocargado doble de 3.8 litros y 24 válvulas, con transmisión integrante de eje transversal independiente')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Ferrari ','612 Scaglietti','Negro', 652, $240952, 2, 'con un motor de gasolina, una cilindrada de 5,7 l y 540 CV de potencia. Caja de cambios automática de seis velocidades de tracción trasera, alcanza una velocidad de 320 km/h y acelerar de 0 a 100 km/h en 4,2 segundos.')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('BMW','M340i XDrive','azul', 652, $15000, 5, 'Caja automática de ocho velocidades, con convertidor de par. Tracción integral permanente. Acelera de 0 a 100 km/h en 4,4 segundos y su velocidad máxima está limitada a 250 km/h.')

INSERT INTO Vehiculo (Marca,modelo,color,NumSerial,precio_venta,stock,descripcion)
VALUES ('Ford ','Mustang Shelby GT500','Azul', 789, $2415000, 1, 'Ford Shelby GT500 monta un potente Motor 5.2L V8 Supercargado de 760HP que entrega la aceleración más rápida en un Mustang de calle. ¡Ponte al volante y libera el poder de este icono de los Muscle Car Americanos!')
GO