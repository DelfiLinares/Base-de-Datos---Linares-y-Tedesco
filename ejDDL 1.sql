CREATE database claseDDL;
USE claseDDL; 

/* EJ5 DER I */
CREATE TABLE PacienteDDL (
	codPac int not null,
    nomPac varchar(45),
    apPac varchar(45),
    direccion varchar(45),
    ciudad varchar(45),
    provincia varchar(45),
    codPostal int,
    tel int,
    fechaNac date,
    primary key(codPac)
);

CREATE TABLE MedicoDDL (
	codigo int not null,
    nombre varchar(45),
    apellido varchar(45),
    telefono int,
    especialidad varchar(45),
    primary key(codigo)
);

CREATE TABLE IngresoDDL (
	codIngreso int not null,
    numHabitacion int,
    numCama int,
    fechaIng date,
    cod_pac int,
    cod_med int,
    primary key (codIngreso),
	foreign key (cod_pac) references PacienteDDL(codPac),
    foreign key (cod_med) references MedicoDDL(codigo)
);

/* EJ6 DER I */
CREATE TABLE ProductoDDL (
	codigo int not null,
    descripcion varchar(45),
    precio int,
    stock int,
    primary key(codigo)
);

CREATE TABLE ClienteDDL(
	codigoCLiente int not null,
    nombreCliente varchar(45),
    apellidoCliente varchar(45),
    direccionCliente varchar(45),
    telefonoCliente int,
    primary key(codigoCLiente)
);

CREATE TABLE ProveedorDDL(
	codProveedor int not null,
    nomProveedor varchar(45),
    apeProveedor varchar(45),
    dirProveedor varchar(45),
    ProvProveedor varchar(45),
    telefonoProveedor int,
    codProducto int ,
    primary key (codProveedor),
    foreign key (codProducto) references ProductoDDL(codigo)
    ON DELETE RESTRICT 
);

CREATE TABLE PRODUCTO_HAS_CLIENTE_DDL(
	codigoCliente int,
    codigo int,
	primary key (codigoCliente, codigo),
	foreign key (codigoCliente) references ClienteDDL(codigoCliente),
	foreign key (codigo) references ProductoDDL (codigo)
);



/* EJ 1 DER I consultaSQL 1 */
CREATE TABLE ClienteDDL (
	dni int not null,
    nomCliente varchar(45),
    apCliente varchar(45),
    dirCliente varchar(45),
    fechaNac date,
    primary key(dni)
);

CREATE TABLE ProveedorDDL (
	dniP int not null,
    nombreP varchar(45),
    apellidoP varchar(45),
    primary key(dniP)
);

CREATE TABLE ProductosDDL(
	codProd int not null,
    precio int,
    nombre varchar(45),
    dni_P int ,
    foreign key (dni_P) references ProveedorDDL (dniP),
    primary key(codProd)
);

CREATE TABLE CLIENTES_HAS_PRODUCTOS_DDL (
	codigo_p int not null,
    dni_cliente int,
    compra int,
    primary key (codigo_p, dni_cliente),
    foreign key (codigo_p) references ProductosDDL (codProd),
    foreign key (dni_cliente) references ClienteDDL (dni)
	ON DELETE CASCADE
    ON UPDATE RESTRICT
);

/* EJ 2 DER I consultaSQL 1 */
CREATE TABLE CamioneroDDL (
	dni int not null,
    nombre varchar(45),
    apellido varchar(45),
    telefono int,
    direccion varchar(45),
    salario int,
    ciudad varchar(45),
    primary key(dni)
);

CREATE TABLE ProvinciaDDL(
	codigoProv int not null,
    nombre varchar(45),
    primary key(codigoProv)
);

CREATE TABLE PaqueteDDL(
	codigoPaq int not null,
	descripcion varchar(45),
    destinatario varchar(45),
    dirdestinatario varchar(45),
    dnicamionero int,
	codprov int,
    primary key (codigoPaq),
    foreign key (dnicamionero) references CamioneroDDL(dni),
    foreign key (codprov) references ProvinciaDDL(codigoProv)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);


CREATE TABLE CamionDDL (
	matricula int not null,
    tipo varchar(45),
    modelo varchar(45),
    potencia int,
    primary key(matricula)
);

CREATE TABLE CAMION_HAS_CAMIONEROS_DDL(
	matriculaCamion int not null,
    dniCamionero int not null,
    fecha date,
	primary key (matriculaCamion, dniCamionero),
    foreign key (matriculaCamion) references CamionDDL (matricula),
    foreign key (dniCamionero) references CamioneroDDL(dni)
);


/* TP TURISMO */
CREATE TABLE clientesDDL(
	dni int not null,
    apellido varchar(45),
    nombre varchar(45),
    tel int,
    cel int,
    dir varchar(45),
    primary key(dni)
);

CREATE TABLE PagoDDL(
	cod int not null,
    Tipo varchar(45),
    primary key(cod)
);

CREATE TABLE PaquetesDDL(
	 id int not null,
     lugar varchar(45),
     dias int,
     noches int,
     costo int,
     tipodeviaje varchar(45),
     cantExcur int,
     primary key(id)
);

CREATE TABLE EmpleadoDDL (
	dniEmp int,
    fechaNac date,
    nombreEm varchar (45),
    apellidoEm varchar(45),
    primary key (dniEmp)
);

CREATE TABLE ReservasDDL (
	codReserva int not null,
    fechaInicio date,
    fechaFin date,
    dniCliente int,
    idPaquete int,
	codPago int,
    primary key(codReserva),
    foreign key (codPago) references PagoDDL(cod),
    foreign key (dniCliente) references clientesDDL(dni),
    foreign key (idPaquete) references PaquetesDDL(id)
    ON DELETE SET NULL
    ON UPDATE RESTRICT
);

alter table ReservasDDL add column descuento float;
alter table ReservasDDL add column empleadoDni int;
alter table ReservasDDL add foreign key (empleadoDni) references EmpleadoDDL(dniEmp);


CREATE TABLE AlojamientoDDL(
    idAlo int not null,
    dirAlo varchar(45),
    cateAlo varchar(45),
    TelAlo int,
    CantpersonasAlo int,
    Garage int,
    Pisos int,
    Parrilla int,
    Cocina int,
    Bar int,
    primary key(idAlo)
);

CREATE TABLE PAQUETE_HAS_ALOJAMIENTO_DDL(
	idAloj int not null,
    idP int not null,
    primary key (idAloj, idP),
    foreign key (idAloj) references AlojamientoDDL(idAlo),
    foreign key (idP) references PaquetesDDL(id)
    ON DELETE RESTRICT
    ON UPDATE SET NULL
);