/*CONSTRUCCION DE LAS TABLAS*/
CREATE TABLE  Participante(
tid VARCHAR(3) NOT NULL,
nid VARCHAR(15) NOT NULL,
email VARCHAR(100) NOT NULL,
pais VARCHAR(30) NOT NULL,
fRegistro DATE NOT NULL,
fRetiro DATE 
);
CREATE TABLE Contacto(
tidC VARCHAR(3) NOT NULL,
nidC VARCHAR(15) NOT NULL,
tidA VARCHAR(3) NOT NULL,
nidA VARCHAR(15) NOT NULL,
nombre VARCHAR(20)NOT NULL,
apellido VARCHAR(20) NOT NULL,
parentezco VARCHAR(30) NOT NULL
);
CREATE TABLE Atleta(
tid VARCHAR(3) NOT NULL,
nid VARCHAR(15) NOT NULL,
rh CHAR(1) NOT NULL,
tSangre CHAR(2) NOT NULL
);
CREATE TABLE EntrenadoPor(
tidE VARCHAR(3) NOT NULL,
nidE VARCHAR(15) NOT NULL,
tidA VARCHAR(3) NOT NULL,
nidA VARCHAR(15) NOT NULL
);
CREATE TABLE Entrenador(
tid VARCHAR(3) NOT NULL,
nid VARCHAR(15) NOT NULL,
seguro VARCHAR(40) NOT NULL
);
CREATE TABLE SimilarA(
numero1 INT NOT NULL,
numero2 INT NOT NULL,
porcentaje INT NOT NULL
);
CREATE TABLE Sesion(
idS INT NOT NULL,
dia INT NOT NULL,
orden INT NOT NULL,
duracion INT NOT NULL,
descripcion VARCHAR(100) NOT NULL,
tid VARCHAR(3) NOT NULL,
nid VARCHAR(15) NOT NULL
);
CREATE TABLE Libre(
numero INT NOT NULL,
tid VARCHAR(3) NOT NULL,
nid VARCHAR(15) NOT NULL
);
CREATE TABLE Planeada(
numero INT NOT NULL,
idS INT NOT NULL 
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
recomendaciones VARCHAR(500),
tid VARCHAR(3) NOT NULL,
nid VARCHAR(15) NOT NULL    
);
/*BORRAR LAS TABLES*/
DROP TABLE Participante CASCADE CONSTRAINTS;
DROP TABLE Contacto CASCADE CONSTRAINTS;
DROP TABLE Atleta CASCADE CONSTRAINTS;
DROP TABLE EntrenadoPor CASCADE CONSTRAINTS;
DROP TABLE Entrenador CASCADE CONSTRAINTS;
DROP TABLE SimilarA CASCADE CONSTRAINTS;
DROP TABLE Sesion CASCADE CONSTRAINTS;
DROP TABLE Libre CASCADE CONSTRAINTS;
DROP TABLE Planeada CASCADE CONSTRAINTS;
DROP TABLE Actividad CASCADE CONSTRAINTS;
DROP TABLE Registro CASCADE CONSTRAINTS;
DROP TABLE Evaluacion CASCADE CONSTRAINTS;

/*POBLAR OK1*/

INSERT INTO participantes VALUES (001,0001, maria.ramirez@mail.escualing.edu.co, TO_DATE('2019/03/25','yyyy/mm/dd'),TO_DATE('2019/07/25','yyyy/mm/dd'));
INSERT INTO participantes VALUES (002,0002, juan.rodriguez@mail.escualing.edu.co, TO_DATE('2020/02/9','yyyy/mm/dd'));
INSERT INTO participantes VALUES (003,0003, andres.martinez@mail.escualing.edu.co, TO_DATE('2020/01/15','yyyy/mm/dd'),TO_DATE('2020/01/29','yyyy/mm/dd'));


