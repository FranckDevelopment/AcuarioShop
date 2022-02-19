/********* CREACION DE BASE*******/
drop database acuarioshop;

create database acuarioshop;

use acuarioshop;          

/********* CREACION DE TABLAS*******/
CREATE TABLE Usuario(
    RFC VARCHAR(13) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(35) NOT NULL,
    Apellidos VARCHAR(70),
    Email VARCHAR(50) NOT NULL,
    Password VARCHAR(15) NOT NULL,
    Tel VARCHAR(10),
    Id_Direccion INT,
    Id_status INT
);
CREATE TABLE Direccion(
    Id_Direccion INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Pais VARCHAR(70) NOT NULL,
    Estado VARCHAR(70) NOT NULL,
    Ciudad VARCHAR(70) NOT NULL,
    Calle VARCHAR(70) NOT NULL,
    C_P INT NOT NULL,
    N_I INT,
    N_E INT NOT NULL
);
CREATE TABLE Estado(
    Id_status INT PRIMARY KEY AUTO_INCREMENT,
    Status CHAR(20)
);
CREATE TABLE R_U_V(
    RFC VARCHAR(13) NOT NULL,
    Id_Vehiculo INT NOT NULL
);
CREATE TABLE Vehiculo(
    Id_Vehiculo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Marca INT NOT NULL, 
    Id_Modelo INT NOT NULL
);

CREATE TABLE Marca(
    Id_Marca INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Marca VARCHAR(35) NOT NULL
);

CREATE TABLE Modelo(
    Id_Modelo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Marca INT NOT NULL,
    Modelo VARCHAR(35) NOT NULL,
    Año INT NOT NULL,
    Motor VARCHAR(50)
);

CREATE TABLE Categoria(
    Id_Cat INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nom_Cat VARCHAR(70) NOT NULL,
    Id_status INT
);

CREATE TABLE Productos(
    Id_Producto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Cat INT NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Descripcion VARCHAR(100) NOT NULL,
    URL_Foto VARCHAR(200) NOT NULL,
    Precio FLOAT NOT NULL,
    Id_status INT
);

CREATE TABLE Reacciones(
    Id_Producto INT NOT NULL,
    Likes INT,
    Comentarios VARCHAR(100)
);

CREATE TABLE Carrito(
    Id_Car INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Total FLOAT NOT NULL
);

CREATE TABLE Facturacion(
    Folio INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_car INT NOT NULL,
    RFC VARCHAR(13) NOT NULL,
    Id_Producto INT NOT NULL,
    Cantidad INT NOT NULL,
    Precio FLOAT NOT NULL,
    Fecha DATETIME NOT NULL
);

/********* RELACIONES DE TABLAS*******/

alter table Usuario add foreign key (Id_status) references Estado (Id_status);
alter table Usuario add foreign key (Id_Direccion) references Direccion (Id_Direccion);
alter table Productos add foreign key (Id_status) references Estado (Id_status);
alter table Productos add foreign key (Id_Cat) references Categoria (Id_Cat);
alter table Categoria add foreign key (Id_status) references Estado (Id_status);
alter table R_U_V add foreign key (RFC) references Usuario (RFC);
alter table R_U_V add foreign key (Id_Vehiculo) references Vehiculo (Id_Vehiculo);
alter table Vehiculo add foreign key (Id_Marca) references Marca (Id_Marca);
alter table Vehiculo add foreign key (Id_Modelo) references Modelo (Id_Modelo);
alter table Modelo add foreign key (Id_Marca) references Marca (Id_Marca);
alter table Reacciones add foreign key (Id_Producto) references Productos (Id_Producto);
alter table Facturacion add foreign key (Id_Car) references Carrito (Id_Car);
alter table Facturacion add foreign key (Id_Producto) references Productos (Id_Producto);
alter table Facturacion add foreign key (RFC) references Usuario (RFC);


/********* CREACION DE DATOS EN TABLAS*******/

insert into Estado(Status) Values('Administrador');
insert into Estado(Status) Values('Registrado');
insert into Estado(Status) Values('Bloqueado');
insert into Estado(Status) Values('Activo');
insert into Estado(Status) Values('Inactivo');


insert into Categoria(Nom_Cat) values('Bujias');
insert into Categoria(Nom_Cat) values('Aceites');
insert into Categoria(Nom_Cat) values('Baterias');
insert into Categoria(Nom_Cat) values('Amortiguadores');
insert into Categoria(Nom_Cat) values('Filtros');
insert into Categoria(Nom_Cat) values('Partes Externas Del Motor');
insert into Categoria(Nom_Cat) values('Balatas');
insert into Categoria(Nom_Cat) values('Suspenciones');








insert into Marca(Marca) values ('AUDI');
insert into Marca(Marca) values ('ACURA');
insert into Marca(Marca) values ('BMW');
insert into Marca(Marca) values ('CHEVROLET');
insert into Marca(Marca) values ('CHRYSLER');
insert into Marca(Marca) values ('FIAT');
insert into Marca(Marca) values ('FORD');
insert into Marca(Marca) values ('GMC');
insert into Marca(Marca) values ('HYUNDAI');
insert into Marca(Marca) values ('NISSAN');


insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A1',2011,"TSI 1.4 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A1',2012,"TSI 1.8 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A1',2013,"TSI 1.6 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A1',2014,"TSI 1.4 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A1',2015,"TSI 1.8 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A1',2016,"TSI 1.2 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A1',2017,"TSI 1.4 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A1',2018,"TSI 1.8 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A1',2019,"TSI 1.2 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A1',2020,"TSI 1.2 4CIL");
###################################################################################

insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A3',2011,"TSI 2.0 6CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A3',2012,"TSI 2.0 6CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A3',2013,"TSI 1.8 6CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A3',2014,"TSI 1.6 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A3',2015,"TSI 1.6 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A3',2016,"TSI 1.4 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A3',2017,"TSI 1.4 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A3',2018,"TSI 1.2 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A3',2019,"TSI 1.2 4CIL");
####################################################################################

insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A4',2014,"TSI 3.5 8CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A4',2015,"TSI 3.0 8CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A4',2016,"TSI 3.0 6CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A4',2017,"TSI 3.2 6CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A4',2018,"TSI 1.8 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A4',2019,"TSI 1.8 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A4',2020,"TSI 1.4 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'A4',2021,"TSI 1.4 4CIL");
####################################################################################

insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'Q3',2015,"TSI 3.5 8CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'Q3',2016,"TSI 3.8 8CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'Q3',2017,"TSI 3.5 6CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'Q3',2018,"TSI 2.5 6CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'Q3',2019,"TSI 2.0 5CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'Q3',2020,"TSI 1.8 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'Q3',2021,"TSI 1.8 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'Q3',2022,"TSI 1.8 4CIL");
####################################################################################

insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'R8',2017,"RSI 3.6 8CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'R8',2018,"RSI 3.5 8CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'R8',2019,"TFSI 3.5 8CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'R8',2020,"TFSI 3.0 6CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (1,'R8',2021,"TFSI 3.0 6CIL");
####################################################################################

insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'MDX',2016,"Turbo DOHC 3.7 6CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'MDX',2017,"Turbo DOHC 3.0 6CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'MDX',2018,"Turbo DOHC 3.5 6CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'MDX',2019,"Turbo DOHC 3.5 6CIL");
####################################################################################

insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'ILX',2014,"MF6 DC synchronous 2.5 6CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'ILX',2017,"MF6 DC synchronous 2.0 6CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'ILX',2018,"MF7 DC synchronous 2.3 6CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'ILX',2019,"MF8 DC synchronous 2.0 5CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'ILX',2021,"MF8 DC synchronous 1.5 4CIL");
####################################################################################

insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'NSX',2004,"doble (DOHC) 2.5 5CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'NSX',2005,"(DOHC) TYPE Y 2.5 5CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'NSX',2007,"doble (DOHC) 2.0 4CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'NSX',2009,"doble TYPE V 1.8 4CIL");
####################################################################################

insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'RLX',2015,"synchronous AC motors 2.6 6CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'RLX',2015,"synchronous AC motors 2.5 5CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'RLX',2015,"synchronous AC motors 1.8 5CIL");
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'RLX',2015,"synchronous AC motors 1.8 4CIL");
####################################################################################

insert into Modelo(Id_Marca,Modelo,Año,Motor) values (2,'TL');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (3,'M4');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (3,'230i');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (3,'540iA');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (3,'M140iA');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (3,'Z4');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (4,'Astra');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (4,'Aveo');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (4,'Camaro');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (4,'Chevy');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (4,'Matiz');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (5,'Cirrus');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (5,'Neon');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (5,'Grand Voyager');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (5,'Shadow');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (5,'Stratus');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (5,'Pacifica');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (6,'Adventure');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (6,'Bravo');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (6,'Palio');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (6,'Stilo');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (6,'Strada');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (7,'Eco Sport');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (7,'Explorer');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (7,'F-150');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (7,'Fiesta');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (7,'Focus');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (8,'Acadia');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (8,'Cayon');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (8,'Sierra');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (8,'Terrain');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (8,'Yukon');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (9,'Accet');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (9,'Creta');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (9,'Santa Fe');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (9,'Sonata');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (9,'Tucson');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (10,'March');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (10,'Altima');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (10,'Sentra');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (10,'Tida');
insert into Modelo(Id_Marca,Modelo,Año,Motor) values (10,'Tsuru');
