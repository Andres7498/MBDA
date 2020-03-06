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
fechaInicio DATE NOT NULL,
horaInicio INT NOT NULL,
tiempoTotal INT NOT NULL,
pulsacionesProm REAL,
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

INSERT INTO Participante VALUES ('001','0001', 'maria.ramirez@mail.escuelaing.edu.co', 'Venezuela', TO_DATE('2019/03/25','yyyy/mm/dd'),TO_DATE('2019/07/25','yyyy/mm/dd'));
INSERT INTO Participante VALUES ('002','0002', 'juan.rodriguez@mail.escuelaing.edu.co', 'Colombia', TO_DATE('2020/02/9','yyyy/mm/dd'), NULL);
INSERT INTO Participante VALUES ('003','0003', 'andres.martinez@mail.escuelaing.edu.co', 'Uruguay', TO_DATE('2020/01/15','yyyy/mm/dd'),TO_DATE('2020/01/29','yyyy/mm/dd'));
INSERT INTO Participante VALUES ('004','0004', 'federico.barrios@gmail.com', 'Colombia', TO_DATE('2018/02/22','yyyy/mm/dd'),NULL);
INSERT INTO Participante VALUES ('005','0005', 'valentina@hotmail.com', 'Colombia', TO_DATE('2016/06/29','yyyy/mm/dd'),NULL);

INSERT INTO contacto VALUES ('001','0001','004','0004','Maria','Ramirez','Amiga'); 
INSERT INTO contacto VALUES ('002','0002','003','0003','Juan','Rodriguez','Tio');
INSERT INTO contacto VALUES ('002','0002','001','0001','Juan','Rodriguez','Hermano');

INSERT INTO Atleta VALUES ('004','0004','-','O');
INSERT INTO Atleta VALUES ('003','0003','-','O');
INSERT INTO Atleta VALUES ('005','0005','+','AB');

INSERT INTO EntrenadoPor VALUES ('002','0002','001','0001');
INSERT INTO EntrenadoPor VALUES ('005','0005','003','0003');
INSERT INTO EntrenadoPor VALUES ('003','0003','004','0004');

INSERT INTO Entrenador VALUES ('002','0002','Suramericana');
INSERT INTO Entrenador VALUES ('005','0005','Porvenir');
INSERT INTO Entrenador VALUES ('003','0003','Porvenir');

INSERT INTO Sesion VALUES (2414,2,50,70,'Cardio','004','0004');
INSERT INTO Sesion VALUES (1765,3,30,90,'Practica de futbol','003','0003');
INSERT INTO Sesion VALUES (7893,4,23,60,'Estiramiento','005','0005');

INSERT INTO Libre VALUES (1,'004','0004');
INSERT INTO Libre VALUES (2,'003','0003');
INSERT INTO Libre VALUES (3,'005','0005');

INSERT INTO Planeada VALUES (4,2414);
INSERT INTO Planeada VALUES (5,1765);
INSERT INTO Planeada VALUES (6,7893);

INSERT INTO Actividad VALUES (1,TO_DATE('2020/03/6','yyyy/mm/dd'),1400,2,80.5,'4fds.4dfsa');
INSERT INTO Actividad VALUES (2,TO_DATE('2020/03/5','yyyy/mm/dd'),1630,3,82.1,'asd4.4dfsa');
INSERT INTO Actividad VALUES (3,TO_DATE('2020/03/4','yyyy/mm/dd'),900,4,86.3,'ewq3.4dfsa');
INSERT INTO Actividad VALUES (4,TO_DATE('2020/03/3','yyyy/mm/dd'),1400,2,90.5,'2sad.4dfsa');
INSERT INTO Actividad VALUES (5,TO_DATE('2020/03/2','yyyy/mm/dd'),2130,3,91.3,'3sas.4dfsa');
INSERT INTO Actividad VALUES (6,TO_DATE('2020/03/1','yyyy/mm/dd'),2400,5,80.5,'f6ew.4dfsa');

INSERT INTO Registro VALUES (1,TO_DATE('2020/03/6','yyyy/mm/dd'),1400,'C',15);
INSERT INTO Registro VALUES (2,TO_DATE('2020/03/5','yyyy/mm/dd'),1630,'V',45);
INSERT INTO Registro VALUES (3,TO_DATE('2020/03/4','yyyy/mm/dd'),900,'P',48);

INSERT INTO Evaluacion VALUES (1,TO_DATE('2020/03/6','yyyy/mm/dd'),2,'Debe practicar más','Zonas: 1 Calentamiento: 3 Cadencia: 2','002','0002');
INSERT INTO Evaluacion VALUES (2,TO_DATE('2020/03/5','yyyy/mm/dd'),3,'Buen gancho','Zonas: 1 Calentamiento: 2 Cadencia: 3','005','0005');
INSERT INTO Evaluacion VALUES (3,TO_DATE('2020/03/4','yyyy/mm/dd'),5,'Tiene aptitudes para esta disciplina','Zonas: 6 Calentamiento: 5 Cadencia: 4','003','0003');

INSERT INTO SimilarA VALUES(1,2,58);
INSERT INTO SimilarA VALUES(3,4,97);
INSERT INTO SimilarA VALUES(1,5,20);

/*POBLAR NO OK*/
INSERT INTO Evaluacion VALUES (4,'2020/02/17',86,'Debe practicar más','Dediquese a otra cosa','002','0002'); /*Se ingreso un varchar en lugar de un tipo DATE*/
INSERT INTO Entrenador VALUES ('006','0006','Porvenir',45648);/*Demasiados valores*/
INSERT INTO Participante VALUES ('005','0005', 'anderson@hotmail.com', 'Venezuela', TO_DATE('2016/06/29','yyyy/mm/dd'),NULL);/*el id de anderson es el mismo de valentina*/
INSERT INTO SimilarA VALUES(1,7,20);/*El id ingresado no se encuentra*/
INSERT INTO Actividad VALUES (7,TO_DATE('2020/02/1','yyyy/mm/dd'),1100,4,74.5,'f6ew4dfsa');/*El codigo de la foto no cumple con el tipo requerido*/

/*DESPOBLAR*/
DELETE FROM Participante;
DELETE FROM Contacto;
DELETE FROM Atleta;
DELETE FROM EntrenadoPor;
DELETE FROM Entrenador;
DELETE FROM SimilarA;
DELETE FROM Sesion;
DELETE FROM Libre;
DELETE FROM Planeada;
DELETE FROM Actividad;
DELETE FROM Registro;
DELETE FROM Evaluacion;

/*CHECKS*/
ALTER TABLE Atleta MODIFY (tSangre CHECK(tSangre='A' OR tSangre='B' OR tSangre='O' OR tSangre='AB'));
ALTER TABLE Actividad MODIFY (tiempoTotal CHECK(tiempoTotal>0 AND tiempoTotal<1441));
ALTER TABLE Actividad MODIFY (horaInicio CHECK(horaInicio>0 AND horaInicio<2401));
ALTER TABLE Registro MODIFY (hora CHECK(hora>0 AND hora<2401));
ALTER TABLE SimilarA MODIFY (porcentaje CHECK(porcentaje>0 AND porcentaje<101));
ALTER TABLE Evaluacion MODIFY (puntaje CHECK(puntaje>=0 AND puntaje<6));
ALTER TABLE Evaluacion MODIFY (recomendaciones CHECK(recomendaciones LIKE 'Zonas: % Calentamiento: % Cadencia: %'));
ALTER TABLE Atleta MODIFY (rh CHECK(rh='+' OR rh='-'));
ALTER TABLE Registro MODIFY (sensor CHECK(sensor='V' OR sensor='P' OR sensor='C'));
ALTER TABLE Actividad MODIFY (fotos CHECK(fotos LIKE '%.%'));

/*PRIMARIAS*/
ALTER TABLE Participante ADD CONSTRAINT PK_Participante PRIMARY KEY (tid,nid);
ALTER TABLE Contacto ADD CONSTRAINT PK_Contacto PRIMARY KEY (tidC,nidC,tidA,nidA);
ALTER TABLE Atleta ADD CONSTRAINT PK_Atleta PRIMARY KEY (tid,nid);
ALTER TABLE EntrenadoPor ADD CONSTRAINT PK_EntrenadoPor PRIMARY KEY (tidE,nidE,tidA,nidA);
ALTER TABLE Entrenador ADD CONSTRAINT PK_Entrenador PRIMARY KEY (tid,nid);
ALTER TABLE SimilarA ADD CONSTRAINT PK_SimilarA PRIMARY KEY (numero1,numero2);
ALTER TABLE Sesion ADD CONSTRAINT PK_Sesion PRIMARY KEY (idS);
ALTER TABLE Libre ADD CONSTRAINT PK_Libre PRIMARY KEY (numero);
ALTER TABLE Planeada ADD CONSTRAINT PK_Planeada PRIMARY KEY (numero);
ALTER TABLE Actividad ADD CONSTRAINT PK_Actividad PRIMARY KEY (numero);
ALTER TABLE Registro ADD CONSTRAINT PK_Registro PRIMARY KEY (numero);
ALTER TABLE Evaluacion ADD CONSTRAINT PK_Evaluacion PRIMARY KEY (numero);

/*UNICAS*/
ALTER TABLE Evaluacion ADD CONSTRAINT UK_Evaluacion UNIQUE (comentarios);

/*FORANEAS*/
ALTER TABLE Contacto ADD CONSTRAINT FK_Contacto_Partticipante FOREIGN KEY (tidC,nidC) REFERENCES Participante(tid,nid);
ALTER TABLE Contacto ADD CONSTRAINT FK_Contacto_Atleta FOREIGN KEY (tidA,nidA) REFERENCES Atleta(tid,nid);