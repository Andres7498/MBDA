/*TABLAS*/
CREATE TABLE ISAB(
    idEmpleado VARCHAR(5) NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    apellido VARCHAR(20) NOT NULL
);

CREATE TABLE CadenasDeCines(
    nit VARCHAR(10) NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    razonSocial VARCHAR(5) NOT NULL,
    fechaDeCreacion DATE NOT NULL,
    idEmpleado VARCHAR(5),
    idUsuario VARCHAR(5)
);

CREATE TABLE Teatros(
    idTeatro VARCHAR(5) NOT NULL,
    ciudad VARCHAR(20) NOT NULL,
    numeroDeSalas INT NOT NULL,
    nit VARCHAR(10) NOT NULL,
    idUsuario VARCHAR(5) NOT NULL
);

CREATE TABLE AreasDeAnalisisDeUsuarios(
    idUsuario VARCHAR(5) NOT NULL,
    funcionesTotales INT NOT NULL,
    generoMasVisto VARCHAR(20) NOT NULL,
    diaDeMasAsistencia VARCHAR(10) NOT NULL
);

CREATE TABLE Publicidades(
    idPublicidad VARCHAR(5) NOT NULL,
    email VARCHAR(30) NOT NULL,
    generoPreferido VARCHAR(20) NOT NULL,
    idUsuario VARCHAR(5) NOT NULL
);

CREATE TABLE Clientes(
    idCliente VARCHAR(5) NOT NULL,
    primerNombre VARCHAR(20) NOT NULL,
    segundoNombre VARCHAR(20) NOT NULL,
    apellidos VARCHAR(20) NOT NULL,
    documento VARCHAR(10) NOT NULL,
    afiliado BOOLEAN NOT NULL,
    idPublicidad VARCHAR(5) NOT NULL,
    idUsuario VARCHAR(5) NOT NULL,
    idTeatro VARCHAR(5) NOT NULL,
    idTaquilla VARCHAR(5) NOT NULL,
    idPago VARCHAR(5) NOT NULL
);

CREATE TABLE Pagos(
    idPago VARCHAR(5) NOT NULL,
    medioDePago VARCHAR(10) NOT NULL,
    fechaDeCompra DATE NOT NULL,
    precio INT NOT NULL,
    idCliente VARCHAR(5) NOT NULL
);

CREATE TABLE Taquillas (
    idTaquilla VARCHAR(5) NOT NULL, 
    numeroDeCaja VARCHAR(2) NOT NULL, 
    idTeatro VARCHAR(5) NOT NULL, 
    idPago VARCHAR(5) NOT NULL
);

CREATE TABLE PagosDeBoletas(
    idPago VARCHAR(5) NOT NULL,
    ubicacion VARCHAR(2),
    idBoletas VARCHAR(5) NOT NULL
);

CREATE TABLE Boletas(
    idBoletas VARCHAR(5) NOT NULL,
    pelicula VARCHAR(20) NOT NULL,
    hora DATETIME NOT NULL,
    idUbicacion VARCHAR(5) NOT NULL,
    idFuncion VARCHAR(5) NOT NULL
);

CREATE TABLE Ubicaciones(
    idUbicacion VARCHAR(5) NOT NULL,
    fila VARCHAR(1) NOT NULL,
    numeroDeSilla INT NOT NULL,
    disponible BOOLEAN NOT NULL
);

CREATE TABLE Salas(
    idSala VARCHAR(5) NOT NULL,
    capacidad INT NOT NULL,
    idTeatro VARCHAR(5) NOT NULL,
    idFuncion VARCHAR(5) NOT NULL
);

CREATE TABLE Funciones(
    idFuncion VARCHAR(5) NOT NULL,
    horaInicio DATETIME NOT NULL,
    horaFin DATETIME NOT NULL,
    idUsuario VARCHAR(5) NOT NULL
);

CREATE TABLE Pelicula(
    idPelicula VARCHAR(5) NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    director VARCHAR(30) NOT NULL,
    fechaEstreno DATE NOT NULL,
    duracion INT NOT NULL,
    tipoPublico VARCHAR(10) NOT NULL,
    idGenero VARCHAR(5) NOT NULL
);

CREATE TABLE Generos(
    idGenero VARCHAR(5) NOT NULL,
    clasificacion VARCHAR(6) NOT NULL,
    nombre VARCHAR(20) NOT NULL
);

CREATE TABLE EncuestasDeSatisfaccion(
    idEncuesta VARCHAR(5) NOT NULL,
    puntajePelicula INT NOT NULL,
    calificacionServicios INT NOT NULL,
    calificacionHorarios INT NOT NULL,
    generoFavorito VARCHAR(5) NOT NULL,
    email VARCHAR(30),
    fechaDiligenciamiento DATE NOT NULL,
    idCliente VARCHAR(5) NOT NULL,
    idUsuario VARCHAR(5) NOT NULL
);

/*ATRIBUTOS*/
ALTER TABLE CadenasDeCines
ADD CONSTRAINT CK_razonSocial
CHECK(razonSocial='S.A' OR razonSocial='S.A.S' OR razonSocial='LTDA' OR razonSocial='Y CIA');

ALTER TABLE AreasDeAnalisisDeLosUsuarios
ADD CONSTRAINT CK_generoMasVistos
CHECK(generoMasVistos='Terror' OR generoMasVistos='Drama' OR generoMasVistos='Suspenso'
    OR generoMasVistos='Fantasia' OR generoMasVistos='Accion' OR generoMasVistos='Comedia'
    OR generoMasVistos='Romance' OR generoMasVistos='Documentales');
    
ALTER TABLE Publicidades
ADD CONSTRAINT CK_email
CHECK(email LIKE '%@%.com');

ALTER TABLE Publicidades
ADD CONSTRAINT CK_generoPreferido
CHECK(generoPreferido='Terror' OR generoPreferido='Drama' OR generoPreferido='Suspenso'
    OR generoPreferido='Fantasia' OR generoPreferido='Accion' OR generoPreferido='Comedia'
    OR generoPreferido='Romance' OR generoPreferido='Documentales');

ALTER TABLE Pagos
ADD CONSTRAINT CK_medioDePago
CHECK(medioDePago='Efectivo' OR medioDePago='Trajeta debito' OR medioDePago='Tarjeta Cine'
    OR medioDePago='Tarjeta credito' OR medioDePago='Consignacion bancaria');
    
    
    
/*PRIMARIAS*/

ALTER TABLE ISABs ADD CONSTRAINT PK_ISABs PRIMARY KEY (idEMpleado);
ALTER TABLE CadenasDeCines ADD CONSTRAINT PK_CadenasDeCines PRIMARY KEY (nit);
ALTER TABLE Teatros ADD CONSTRAINT PK_Teatros PRIMARY KEY (idTeatro);
ALTER TABLE AreasDeAnalisisDeLosUsuarios ADD CONSTRAINT PK_AreasDeAnalisisDeLosUsuarios PRIMARY KEY (idUsuario);
ALTER TABLE Publicidades ADD CONSTRAINT PK_Publicidades PRIMARY KEY (idPublicidad);
ALTER TABLE Clientes ADD CONSTRAINT PK_Clientes PRIMARY KEY (idCliente);
ALTER TABLE Pagos ADD CONSTRAINT PK_Pagos PRIMARY KEY (idPago);
ALTER TABLE Taquillas ADD CONSTRAINT PK_Taquillas PRIMARY KEY (idTaquillas);
ALTER TABLE PagosDeBoletas ADD CONSTRAINT PK_PagosDeBoletas PRIMARY KEY (idPago);
ALTER TABLE Boletas ADD CONSTRAINT PK_Boletas PRIMARY KEY (idBoletas);
ALTER TABLE Ubicaciones ADD CONSTRAINT PK_Ubicaciones PRIMARY KEY (idUbicacion);
ALTER TABLE Salas ADD CONSTRAINT PK_Salas PRIMARY KEY (idSala);
ALTER TABLE Funciones ADD CONSTRAINT PK_Funciones PRIMARY KEY (idFunciones);
ALTER TABLE Peliculas ADD CONSTRAINT PK_Peliculas PRIMARY KEY (idPelicula);
ALTER TABLE Generos ADD CONSTRAINT PK_Generos PRIMARY KEY (idGenero);
ALTER TABLE EncuestasDeSatisfaccion ADD CONSTRAINT PK_EncuestasDeSatisfaccion PRIMARY KEY (idEncuesta);

/*UNICAS*/

ALTER TABLE Teatros ADD CONSTRAINT UK_Teatros UNIQUE (idUsuario);
ALTER TABLE Taquillas ADD CONSTRAINT UK_Taquila UNIQUE (idPago);
ALTER TABLE PagosDeBoletas ADD CONSTRAINT UK_PagosDeBoletas UNIQUE (idBoletas);
ALTER TABLE Boletas ADD CONSTRAINT UK_Boletas UNIQUE (idUbicacion);