CREATE TABLE  Participante(
tid VARCHAR(3) NOT NULL,
nid VARCHAR(15) NOT NULL,
email VARCHAR(100) NOT NULL,
pais VARCHAR(30) NOT NULL,
fRegistro DATE NOT NULL,
fRetiro DATE 
);
CREATE TABLE Atleta(
idAtleta INT NOT NULL,
rh CHAR(1) NOT NULL,
tSangre CHAR(2) NOT NULL
);
CREATE TABLE Entrenador(
idEntrenador INT NOT NULL,
seguro VARCHAR(40) NOT NULL
);
CREATE TABLE Sesion(
idSesion INT NOT NULL,
dia INT NOT NULL,
orden INT NOT NULL,
descripcion VARCHAR(100) NOT NULL
);
CREATE TABLE Actividad(
numero INT NOT NULL,
fechainicio DATE NOT NULL,
horainicio INT NOT NULL,
tiempototal INT NOT NULL,
pulsacionesprom REAL,
fotos VARCHAR(150) NOT NULL
);
CREATE TABLE Registro(
numero INT NOT NULL,
fecha DATE NOT NULL,
hora INT NOT NULL,
sensor CHAR(1) NOT NULL,
valor INT NOT NULL
);
CREATE TABLE Evaluacion(
numero INT NOT NULL,
fecha DATE NOT NULL,
puntaje INT NOT NULL,
comentarios VARCHAR(500),
recomendaciones VARCHAR(500)
);
