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
    afiliado VARCHAR(1) NOT NULL,
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
    fecha DATE NOT NULL,
    idUbicacion VARCHAR(5) NOT NULL,
    idFuncion VARCHAR(5) NOT NULL
);

CREATE TABLE Ubicaciones(
    idUbicacion VARCHAR(5) NOT NULL,
    fila VARCHAR(1) NOT NULL,
    numeroDeSilla INT NOT NULL,
    disponible VARCHAR(1) NOT NULL,
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