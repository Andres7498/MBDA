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

CREATE TABLE ClientesEnTeatros(
    idTeatro VARCHAR(5) NOT NULL,
    idCliente VARCHAR(5) NOT NULL
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
    idTeatro VARCHAR(5) NOT NULL
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

CREATE TABLE Pagos(
    idPago VARCHAR(5) NOT NULL,
    medioDePago VARCHAR(20) NOT NULL,
    fechaDeCompra DATE NOT NULL,
    precio INT NOT NULL,
    idCliente VARCHAR(5) NOT NULL,
    idTaquilla VARCHAR(5) NOT NULL
);

CREATE TABLE Taquillas (
    idTaquilla VARCHAR(5) NOT NULL, 
    numeroDeCaja VARCHAR(2) NOT NULL, 
    idTeatro VARCHAR(5) NOT NULL
);

CREATE TABLE TaquillasClientes(
    idTaquilla VARCHAR(5) NOT NULL,
    idCliente VARCHAR(5) NOT NULL
);

CREATE TABLE Boletas(
    idBoletas VARCHAR(5) NOT NULL,
    pelicula VARCHAR(20) NOT NULL,
    hora DATE NOT NULL,
    idUbicacion VARCHAR(5) NOT NULL,
    idFuncion VARCHAR(5) NOT NULL
);

CREATE TABLE Ubicaciones(
    idUbicacion VARCHAR(5) NOT NULL,
    fila CHAR(1) NOT NULL,
    numeroDeSilla INT NOT NULL,
    disponible BOOLEAN NOT NULL,
    idSala VARCHAR(5) NOT NULL
);

CREATE TABLE Salas(
    idSala VARCHAR(5) NOT NULL,
    capacidad INT NOT NULL,
    disponibilidad INT NOT NULL,
    idTeatro VARCHAR(5) NOT NULL,
    idFuncion VARCHAR(5) NOT NULL
);

CREATE TABLE Funciones(
    idFuncion VARCHAR(5) NOT NULL,
    horaInicio DATE NOT NULL,
    horaFin DATE NOT NULL,
    idUsuario VARCHAR(5) NOT NULL,
    idPelicula VARCHAR(5) NOT NULL
);

CREATE TABLE Peliculas(
    idPelicula VARCHAR(5) NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    director VARCHAR(30) NOT NULL,
    fechaEstreno DATE NOT NULL,
    duracion INT NOT NULL,
    tipoPublico VARCHAR(10) NOT NULL,
    idGenero VARCHAR(5) NOT NULL,
    idFuncion VARCHAR(5) NOT NULL
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



/*ATRIBUTOS CHECKS*/
/*
Todos los email
Razon social en CadenasDeCines
Medios de pago en Pagos
Nombres de generos en Generos
*/
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
    
ALTER TABLE AreasDeAnalisisDeUsuarios
ADD CONSTRAINT CK_diaQueMasViene
CHECK (diaQueMasViene='Lunes' OR diaQueMasViene='Martes' OR diaQueMasViene='Miercoles' OR diaQueMasViene='Jueves' OR
    diaQueMasViene='Viernes' OR diaQueMasViene='Sabado' OR diaQueMasViene='Domingo');

ALTER TABLE EncuestasDeSatisfaccion
ADD CONSTRAINT CK_email
    CHECK(email LIKE '%@%.com');
    
ALTER TABLE Pelicula
ADD CONSTRAINT CK_duracion
    CHECK (duracion LIKE 'INT:INT');

/*PRIMARIAS*/

ALTER TABLE ISABs ADD CONSTRAINT PK_ISABs PRIMARY KEY (idEmpleado);
ALTER TABLE CadenasDeCines ADD CONSTRAINT PK_CadenasDeCines PRIMARY KEY (nit);
ALTER TABLE Teatros ADD CONSTRAINT PK_Teatros PRIMARY KEY (idTeatro);
ALTER TABLE ClientesEnTeatros ADD CONSTRAINT PK_ClientesEnTeatros PRIMARY KEY (idTeatro,idCliente);
ALTER TABLE Clientes ADD CONSTRAINT PK_Clientes PRIMARY KEY (idCliente);

ALTER TABLE AreasDeAnalisisDeLosUsuarios ADD CONSTRAINT PK_AreasDeAnalisisDeLosUsuarios PRIMARY KEY (idUsuario);
ALTER TABLE Publicidades ADD CONSTRAINT PK_Publicidades PRIMARY KEY (idPublicidad);
ALTER TABLE EncuestasDeSatisfaccion ADD CONSTRAINT PK_EncuestasDeSatisfaccion PRIMARY KEY (idEncuesta);

ALTER TABLE Pagos ADD CONSTRAINT PK_Pagos PRIMARY KEY (idPago);
ALTER TABLE Taquillas ADD CONSTRAINT PK_Taquillas PRIMARY KEY (idTaquilla);
ALTER TABLE TaquillasClientes ADD CONSTRAINT PK_TaquillasClientes PRIMARY KEY (idTaquilla,idCliente);
ALTER TABLE Boletas ADD CONSTRAINT PK_Boletas PRIMARY KEY (idBoletas);
ALTER TABLE Ubicaciones ADD CONSTRAINT PK_Ubicaciones PRIMARY KEY (idUbicacion);
ALTER TABLE Salas ADD CONSTRAINT PK_Salas PRIMARY KEY (idSala);
ALTER TABLE Funciones ADD CONSTRAINT PK_Funciones PRIMARY KEY (idFuncion);
ALTER TABLE Peliculas ADD CONSTRAINT PK_Peliculas PRIMARY KEY (idPelicula);
ALTER TABLE Generos ADD CONSTRAINT PK_Generos PRIMARY KEY (idGenero);


/*UNICAS*/

ALTER TABLE Teatros ADD CONSTRAINT UK_Teatros UNIQUE (idUsuario);
ALTER TABLE Boletas ADD CONSTRAINT UK_Boletas UNIQUE (idUbicacion);

/*FORANEAS*/

ALTER TABLE CadenasDeCines ADD CONSTRAINT FK_Cadenas_Isab FOREIGN KEY (idEmpleado) REFERENCES ISABs(idEmpleado);
ALTER TABLE CadenasDeCines ADD CONSTRAINT FK_Cadenas_AreaAnalisis FOREIGN KEY (idUsuario) REFERENCES AreasDeAnalisisDeLosUsuarios (idUsuario);

ALTER TABLE Teatros ADD CONSTRAINT FK_Teatros_Cadenas FOREIGN KEY (nit) REFERENCES CadenasDeCines(nit);
ALTER TABLE Teatros ADD CONSTRAINT FK_Teatros_AreaAnalisis FOREIGN KEY (idUsuario) REFERENCES AreasDeAnalisisDeLosUsuarios(idUsuario); 

ALTER TABLE ClientesEnTeatros ADD CONSTRAINT FK_CliEnTea_Teatros FOREIGN KEY (idTeatro) REFERENCES Teatros(idTeatro);
ALTER TABLE ClientesEnTeatros ADD CONSTRAINT FK_CliEnTea_Clientes FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente);

ALTER TABLE Clientes ADD CONSTRAINT FK_Clientes_Teatros FOREIGN KEY (idTeatro) REFERENCES Teatros(idTeatro); 
ALTER TABLE Clientes ADD CONSTRAINT FK_Clientes_Publicidades FOREIGN KEY (idPublicidad) REFERENCES Publicidades(idPublicidad); 
ALTER TABLE Clientes ADD CONSTRAINT FK_Clientes_AreaAnalisis FOREIGN KEY (idUsuario) REFERENCES AreasDeAnalisisDeLosUsuarios(idUsuario); 

ALTER TABLE Salas ADD CONSTRAINT FK_Salas_Teatro FOREIGN KEY (idTeatro) REFERENCES Teatros(idTeatro);
ALTER TABLE Salas ADD CONSTRAINT FK_Salas_Funciones FOREIGN KEY (idFuncion) REFERENCES Funciones(idFuncion);

ALTER TABLE Peliculas ADD CONSTRAINT FK_Peliculas_Generos FOREIGN KEY (idGenero) REFERENCES Generos(idGenero);
ALTER TABLE Peliculas ADD CONSTRAINT FK_Peliculas_Funciones FOREIGN KEY (idFuncion) REFERENCES Funciones(idFuncion);

ALTER TABLE Ubicaciones ADD CONSTRAINT FK_Ubicaciones_Salas FOREIGN KEY (idSala) REFERENCES Salas(idSala);

ALTER TABLE EncuestasDeSatisfaccion ADD CONSTRAINT FK_Encuestas_Clientes FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente);
ALTER TABLE EncuestasDeSatisfaccion ADD CONSTRAINT FK_Encuestas_AreaAnalisis FOREIGN KEY (idUsuario) REFERENCES AreasDeAnalisisDeLosUsuarios(idUsuario);

ALTER TABLE Funciones ADD CONSTRAINT FK_Funciones_AreaAnalisis FOREIGN KEY (idUsuario) REFERENCES AreasDeAnalisisDeLosUsuarios(idUsuario);
ALTER TABLE Funciones ADD CONSTRAINT FK_Funciones_Peliculas FOREIGN KEY (idPelicula) REFERENCES Peliculas(idPelicula);

ALTER TABLE Taquillas ADD CONSTRAINT FK_Taquillas_Teatros FOREIGN KEY (idTeatro) REFERENCES Teatros(idTeatro);

ALTER TABLE TaquillasClientes ADD CONSTRAINT FK_TaquillasClientes_Taquillas FOREIGN KEY (idTaquilla) REFERENCES Taquillas(idTaquilla);
ALTER TABLE TaquillasClientes ADD CONSTRAINT FK_TaquillasClientes_Clientes FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente);

ALTER TABLE Publicidades ADD CONSTRAINT FK_Publicidades_AreaAnalisis FOREIGN KEY (idUsuario) REFERENCES AreasDeAnalisisDeLosUsuarios(idUsuario);

ALTER TABLE Pagos ADD CONSTRAINT FK_Pagos_Clientes FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente);
ALTER TABLE Pagos ADD CONSTRAINT FK_Pagos_Taquillas FOREIGN KEY (idTaquilla) REFERENCES Taquillas(idTaquilla);

ALTER TABLE Boletas ADD CONSTRAINT FK_Boletas_Pagos FOREIGN KEY (idPago) REFERENCES Pagos(idPago);
ALTER TABLE Boletas ADD CONSTRAINT FK_Boletas_Ubicaciones FOREIGN KEY (idUbicacion) REFERENCES Ubicaciones(idUbicacion);
ALTER TABLE Boletas ADD CONSTRAINT FK_Boletas_Funciones FOREIGN KEY (idFuncion) REFERENCES Funciones(idFuncion);

/*VISTAS*/
CREATE VIEW V_Boleta AS
	SELECT * FROM Boletas JOIN Ubicaciones ON (Boletas.idUbicacion=Ubicaciones.idUbicacion);
CREATE VIEW V_Peliculas AS
	SELECT idPelicula, idGenero, nombre, director, duracion, horaInicio, horaFin, clasificacion
	FROM Funciones JOIN Peliculas ON (idPelicula=idPelicula) JOIN Generos ON (idGenero=idGenero);
CREATE VIEW V_Clientes AS
	SELECT idCliente, primerNombre,segundoNombre, apellidos, documento, puntajePelicula, calificacionServicios, generoFavorito
	FROM Clientes JOIN EncuestasDeSatisfaccion ON (idCliente=idCliente);
/*ELIMINAR VISTAS*/
DROP VIEW V_Boletas;
DROP VIEW V_Peliculas;
DROP VIEW v_Clientes;

/*ELIMINAR TABLAS*/

DROP TABLE ACTIVIDAD;
