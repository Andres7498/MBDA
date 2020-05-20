/*LAB03*/

/*CONSTRUCCION DE LAS TABLAS*/

CREATE TABLE  Participantes(
    tid VARCHAR(3) NOT NULL,
    nid VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    pais VARCHAR(30) NOT NULL,
    fRegistro DATE NOT NULL,
    fRetiro DATE 
);
CREATE TABLE Contactos(
    tidContacto VARCHAR(3) NOT NULL,
    nidContacto VARCHAR(15) NOT NULL,
    tidAtleta VARCHAR(3) NOT NULL,
    nidAtleta VARCHAR(15) NOT NULL,
    nombre VARCHAR(20)NOT NULL,
    apellido VARCHAR(20) NOT NULL,
    parentezco VARCHAR(30) NOT NULL
);
CREATE TABLE Atletas(
    tid VARCHAR(3) NOT NULL,
    nid VARCHAR(15) NOT NULL,
    rh CHAR(1) NOT NULL,
    tSangre CHAR(2) NOT NULL
);
CREATE TABLE EntrenadoPor(
    tidEntrenador VARCHAR(3) NOT NULL,
    nidEntrenador VARCHAR(15) NOT NULL,
    tidAtleta VARCHAR(3) NOT NULL,
    nidAtleta VARCHAR(15) NOT NULL
);
CREATE TABLE Entrenadores(
    tid VARCHAR(3) NOT NULL,
    nid VARCHAR(15) NOT NULL,
    seguro VARCHAR(40) NOT NULL
);
CREATE TABLE SimilarA(
    evaluacion1 INT NOT NULL,
    evaluacion2 INT NOT NULL,
    porcentaje INT NOT NULL
);
CREATE TABLE Sesiones(
    idSesion INT NOT NULL,
    dia INT NOT NULL,
    orden INT NOT NULL,
    duracion INT NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    tidAtleta VARCHAR(3) NOT NULL,
    nidAtleta VARCHAR(15) NOT NULL
);
CREATE TABLE Libres(
    numero INT NOT NULL,
    tidAtleta VARCHAR(3) NOT NULL,
    nidAtleta VARCHAR(15) NOT NULL
);
CREATE TABLE Planeadas(
    numero INT NOT NULL,
    sesion INT NOT NULL 
);
CREATE TABLE Actividades(
    numero INT NOT NULL,
    fechaInicio DATE NOT NULL,
    horaInicio INT NOT NULL,
    tiempoTotal INT NOT NULL,
    pulsacionesProm REAL
);
CREATE TABLE Registros(
    numero INT NOT NULL,
    actividad INT NOT NULL,
    fecha DATE NOT NULL,
    hora INT NOT NULL,
    sensor CHAR(1) NOT NULL,
    valor INT NOT NULL
);
CREATE TABLE Evaluaciones(
    numero INT NOT NULL,
    fecha DATE NOT NULL,
    puntaje INT NOT NULL,
    comentarios VARCHAR(500),
    recomendaciones VARCHAR(500),
    actividad INT NOT NULL,
    tid VARCHAR(3) NOT NULL,
    nid VARCHAR(15) NOT NULL
);
CREATE TABLE Fotos(
    actividad INT NOT NULL,
    foto VARCHAR(150) NOT NULL
);

/*BORRAR LAS TABLAS*/

DROP TABLE Participantes CASCADE CONSTRAINTS;
DROP TABLE Contactos CASCADE CONSTRAINTS;
DROP TABLE Atletas CASCADE CONSTRAINTS;
DROP TABLE EntrenadoPor CASCADE CONSTRAINTS;
DROP TABLE Entrenadores CASCADE CONSTRAINTS;
DROP TABLE SimilarA CASCADE CONSTRAINTS;
DROP TABLE Sesiones CASCADE CONSTRAINTS;
DROP TABLE Libres CASCADE CONSTRAINTS;
DROP TABLE Planeadas CASCADE CONSTRAINTS;
DROP TABLE Actividades CASCADE CONSTRAINTS;
DROP TABLE Registros CASCADE CONSTRAINTS;
DROP TABLE Evaluaciones CASCADE CONSTRAINTS;
DROP TABLE Fotos CASCADE CONSTRAINTS;

/*POBLAR OK1*/

INSERT INTO Participantes VALUES ('001','0001', 'maria.ramirez@mail.escuelaing.edu.co', 'Venezuela', TO_DATE('2019/03/25','yyyy/mm/dd'),TO_DATE('2019/07/25','yyyy/mm/dd'));
/*LAB03*/

/*CONSTRUCCION DE LAS TABLAS*/

CREATE TABLE  Participantes(
    tid VARCHAR(3) NOT NULL,
    nid VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    pais VARCHAR(30) NOT NULL,
    fRegistro DATE NOT NULL,
    fRetiro DATE 
);
CREATE TABLE Contactos(
    tidContacto VARCHAR(3) NOT NULL,
    nidContacto VARCHAR(15) NOT NULL,
    tidAtleta VARCHAR(3) NOT NULL,
    nidAtleta VARCHAR(15) NOT NULL,
    nombre VARCHAR(20)NOT NULL,
    apellido VARCHAR(20) NOT NULL,
    parentezco VARCHAR(30) NOT NULL
);
CREATE TABLE Atletas(
    tid VARCHAR(3) NOT NULL,
    nid VARCHAR(15) NOT NULL,
    rh CHAR(1) NOT NULL,
    tSangre CHAR(2) NOT NULL
);
CREATE TABLE EntrenadoPor(
    tidEntrenador VARCHAR(3) NOT NULL,
    nidEntrenador VARCHAR(15) NOT NULL,
    tidAtleta VARCHAR(3) NOT NULL,
    nidAtleta VARCHAR(15) NOT NULL
);
CREATE TABLE Entrenadores(
    tid VARCHAR(3) NOT NULL,
    nid VARCHAR(15) NOT NULL,
    seguro VARCHAR(40) NOT NULL
);
CREATE TABLE SimilarA(
    evaluacion1 INT NOT NULL,
    evaluacion2 INT NOT NULL,
    porcentaje INT NOT NULL
);
CREATE TABLE Sesiones(
    idSesion INT NOT NULL,
    dia INT NOT NULL,
    orden INT NOT NULL,
    duracion INT NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    tidAtleta VARCHAR(3) NOT NULL,
    nidAtleta VARCHAR(15) NOT NULL
);
CREATE TABLE Libres(
    numero INT NOT NULL,
    tidAtleta VARCHAR(3) NOT NULL,
    nidAtleta VARCHAR(15) NOT NULL
);
CREATE TABLE Planeadas(
    numero INT NOT NULL,
    sesion INT NOT NULL 
);
CREATE TABLE Actividades(
    numero INT NOT NULL,
    fechaInicio DATE NOT NULL,
    horaInicio INT NOT NULL,
    tiempoTotal INT NOT NULL,
    pulsacionesProm REAL
);
CREATE TABLE Registros(
    numero INT NOT NULL,
    actividad INT NOT NULL,
    fecha DATE NOT NULL,
    hora INT NOT NULL,
    sensor CHAR(1) NOT NULL,
    valor INT NOT NULL
);
CREATE TABLE Evaluaciones(
    numero INT NOT NULL,
    fecha DATE NOT NULL,
    puntaje INT NOT NULL,
    comentarios VARCHAR(500),
    recomendaciones VARCHAR(500),
    actividad INT NOT NULL,
    tid VARCHAR(3) NOT NULL,
    nid VARCHAR(15) NOT NULL
);
CREATE TABLE Fotos(
    actividad INT NOT NULL,
    foto VARCHAR(150) NOT NULL
);

/*BORRAR LAS TABLAS*/

DROP TABLE Participantes CASCADE CONSTRAINTS;
DROP TABLE Contactos CASCADE CONSTRAINTS;
DROP TABLE Atletas CASCADE CONSTRAINTS;
DROP TABLE EntrenadoPor CASCADE CONSTRAINTS;
DROP TABLE Entrenadores CASCADE CONSTRAINTS;
DROP TABLE SimilarA CASCADE CONSTRAINTS;
DROP TABLE Sesiones CASCADE CONSTRAINTS;
DROP TABLE Libres CASCADE CONSTRAINTS;
DROP TABLE Planeadas CASCADE CONSTRAINTS;
DROP TABLE Actividades CASCADE CONSTRAINTS;
DROP TABLE Registros CASCADE CONSTRAINTS;
DROP TABLE Evaluaciones CASCADE CONSTRAINTS;
DROP TABLE Fotos CASCADE CONSTRAINTS;

/*POBLAR OK1*/

INSERT INTO Participantes VALUES ('001','0001', 'maria.ramirez@mail.escuelaing.edu.co', 'Venezuela', TO_DATE('2019/03/25','yyyy/mm/dd'),TO_DATE('2019/07/25','yyyy/mm/dd'));
INSERT INTO Participantes VALUES ('002','0002', 'juan.rodriguez@mail.escuelaing.edu.co', 'Colombia', TO_DATE('2020/02/9','yyyy/mm/dd'), NULL);
INSERT INTO Participantes VALUES ('003','0003', 'andres.martinez@mail.escuelaing.edu.co', 'Uruguay', TO_DATE('2020/01/15','yyyy/mm/dd'),TO_DATE('2020/01/29','yyyy/mm/dd'));
INSERT INTO Participantes VALUES ('004','0004', 'federico.barrios@gmail.com', 'Colombia', TO_DATE('2018/02/22','yyyy/mm/dd'),NULL);
INSERT INTO Participantes VALUES ('005','0005', 'valentina@hotmail.com', 'Colombia', TO_DATE('2016/06/29','yyyy/mm/dd'),NULL);

INSERT INTO contactos VALUES ('001','0001','004','0004','Maria','Ramirez','Amiga'); 
INSERT INTO contactos VALUES ('002','0002','003','0003','Juan','Rodriguez','Tio');
INSERT INTO contactos VALUES ('002','0002','001','0001','Juan','Rodriguez','Hermano');

INSERT INTO Atletas VALUES ('004','0004','-','O');
INSERT INTO Atletas VALUES ('003','0003','-','O');
INSERT INTO Atletas VALUES ('005','0005','+','AB');

INSERT INTO EntrenadoPor VALUES ('002','0002','001','0001');
INSERT INTO EntrenadoPor VALUES ('005','0005','003','0003');
INSERT INTO EntrenadoPor VALUES ('003','0003','004','0004');

INSERT INTO Entrenadores VALUES ('002','0002','Suramericana');
INSERT INTO Entrenadores VALUES ('005','0005','Porvenir');
INSERT INTO Entrenadores VALUES ('003','0003','Porvenir');

INSERT INTO Sesiones VALUES (2414,2,50,70,'Cardio','004','0004');
INSERT INTO Sesiones VALUES (1765,3,30,90,'Practica de futbol','003','0003');
INSERT INTO Sesiones VALUES (7893,4,23,60,'Estiramiento','005','0005');

INSERT INTO Libres VALUES (1,'004','0004');
INSERT INTO Libres VALUES (2,'003','0003');
INSERT INTO Libres VALUES (3,'005','0005');

INSERT INTO Planeadas VALUES (4,2414);
INSERT INTO Planeadas VALUES (5,1765);
INSERT INTO Planeadas VALUES (6,7893);

INSERT INTO Actividades VALUES (1,TO_DATE('2020/03/6','yyyy/mm/dd'),1400,2,80.5);
INSERT INTO Actividades VALUES (2,TO_DATE('2020/03/5','yyyy/mm/dd'),1630,3,82.1);
INSERT INTO Actividades VALUES (3,TO_DATE('2020/03/4','yyyy/mm/dd'),900,4,86.3);
INSERT INTO Actividades VALUES (4,TO_DATE('2020/03/3','yyyy/mm/dd'),1400,2,90.5);
INSERT INTO Actividades VALUES (5,TO_DATE('2020/03/2','yyyy/mm/dd'),2130,3,91.3);
INSERT INTO Actividades VALUES (6,TO_DATE('2020/03/1','yyyy/mm/dd'),2400,5,80.5);

INSERT INTO Registros VALUES (1,4,TO_DATE('2020/03/6','yyyy/mm/dd'),1400,'C',15);
INSERT INTO Registros VALUES (2,5,TO_DATE('2020/03/5','yyyy/mm/dd'),1630,'V',45);
INSERT INTO Registros VALUES (3,6,TO_DATE('2020/03/4','yyyy/mm/dd'),900,'P',48);

INSERT INTO Evaluaciones VALUES (1,TO_DATE('2020/03/6','yyyy/mm/dd'),2,'Debe practicar más','Zonas: 1 Calentamiento: 3 Cadencia: 2',1,'002','0002');
INSERT INTO Evaluaciones VALUES (2,TO_DATE('2020/03/5','yyyy/mm/dd'),3,'Buen gancho','Zonas: 1 Calentamiento: 2 Cadencia: 3',2,'005','0005');
INSERT INTO Evaluaciones VALUES (3,TO_DATE('2020/03/4','yyyy/mm/dd'),5,'Tiene aptitudes para esta disciplina','Zonas: 6 Calentamiento: 5 Cadencia: 4',3,'003','0003');

INSERT INTO SimilarA VALUES(1,2,58);
INSERT INTO SimilarA VALUES(3,4,97);
INSERT INTO SimilarA VALUES(1,5,20);

INSERT INTO Fotos VALUES(1,'4fers.sda2');
INSERT INTO Fotos VALUES(2,'5dsa.weq');
INSERT INTO Fotos VALUES(1,'3g4ikd.sad');

/*POBLAR NO OK 1*/

INSERT INTO Evaluaciones VALUES (4,'2020/02/17',86,'Debe practicar más','Dediquese a otra cosa','002','0002'); /*Se ingreso un varchar en lugar de un tipo DATE*/
INSERT INTO Entrenadores VALUES ('006','0006','Porvenir',45648);/*Demasiados valores*/
INSERT INTO Participantes VALUES (NULL,NULL,'federico@gmail.com','Colombia',TO_DATE('2016/06/29','yyyy/mm/dd'),NULL); /*tid y nid no puedes ser nulos*/
INSERT INTO Atletas VALUES ('0025','0005','+','AB'); /*El valor del tid es mas grande de lo permitido*/
INSERT INTO Planeadas VALUES ('ca21',0005); /*El número de la sesion planeada no es del tipo requerido, ingresa char necesita int*/

/*POBLAR NO OK 2*/
INSERT INTO Participantes VALUES ('005','0005', 'anderson@hotmail.com', 'Venezuela', TO_DATE('2016/06/29','yyyy/mm/dd'),NULL);/*el id de anderson es el mismo de valentina*/
INSERT INTO SimilarA VALUES(1,7,20);/*El id ingresado no se encuentra*/
INSERT INTO Actividades VALUES (7,TO_DATE('2020/02/1','yyyy/mm/dd'),1100,4,74.5,'f6ew4dfsa');/*El codigo de la foto no cumple con el tipo requerido*/
INSERT INTO Atletas VALUES ('102','2137321','+','x'); /*El tipo de sangre no es valido*/
INSERT INTO SimilarA VALUES(1,3,120);/*El porcentaje es mayor a 100*/

/*DESPOBLAR*/

DELETE FROM Participantes;
DELETE FROM Contactos;
DELETE FROM Atletas;
DELETE FROM EntrenadoPor;
DELETE FROM Entrenadores;
DELETE FROM SimilarA;
DELETE FROM Sesiones;
DELETE FROM Libres;
DELETE FROM Planeadas;
DELETE FROM Actividades;
DELETE FROM Registros;
DELETE FROM Evaluaciones;
DELETE FROM Fotos;

/*CHECKS*/
ALTER TABLE Atletas ADD CONSTRAINT CK_TSangres CHECK(tSangre='A' OR tSangre='B' OR tSangre='O' OR tSangre='AB');
ALTER TABLE Actividades ADD CONSTRAINT CK_tiempoTotal CHECK(tiempoTotal>0 AND tiempoTotal<1441);
ALTER TABLE Actividades ADD CONSTRAINT CK_horaInicio CHECK(horaInicio>0 AND horaInicio<2401);
ALTER TABLE Registros ADD CONSTRAINT CK_hora CHECK(hora>0 AND hora<2401);
ALTER TABLE SimilarA ADD CONSTRAINT CK_porcentaje CHECK(porcentaje>0 AND porcentaje<101);
ALTER TABLE Evaluaciones ADD CONSTRAINT CK_puntaje CHECK(puntaje>=0 AND puntaje<6);
ALTER TABLE Evaluaciones ADD CONSTRAINT CK_recomendaciones CHECK(recomendaciones LIKE 'Zonas: % Calentamiento: % Cadencia: %');
ALTER TABLE Atletas ADD CONSTRAINT CK_RHs CHECK(rh='+' OR rh='-');
ALTER TABLE Registros ADD CONSTRAINT CK_sensor CHECK(sensor='V' OR sensor='P' OR sensor='C');
ALTER TABLE Fotos ADD CONSTRAINT CK_foto CHECK(foto LIKE '%.%');

/*ALTER TABLE Atleta MODIFY (tSangre CHECK(tSangre='A' OR tSangre='B' OR tSangre='O' OR tSangre='AB'));*/
/*ALTER TABLE Actividad MODIFY (tiempoTotal CHECK(tiempoTotal>0 AND tiempoTotal<1441));*/
/*ALTER TABLE Actividad MODIFY (horaInicio CHECK(horaInicio>0 AND horaInicio<2401));*/
/*ALTER TABLE Registro MODIFY (hora CHECK(hora>0 AND hora<2401));*/
/*ALTER TABLE SimilarA MODIFY (porcentaje CHECK(porcentaje>0 AND porcentaje<101));*/
/*ALTER TABLE Evaluacion MODIFY (puntaje CHECK(puntaje>=0 AND puntaje<6));*/
/*ALTER TABLE Evaluacion MODIFY (recomendaciones CHECK(recomendaciones LIKE 'Zonas: % Calentamiento: % Cadencia: %'));*/
/*ALTER TABLE Atleta MODIFY (rh CHECK(rh='+' OR rh='-'));*/
/*ALTER TABLE Registro MODIFY (sensor CHECK(sensor='V' OR sensor='P' OR sensor='C'));*/
/*ALTER TABLE Fotos MODIFY (foto CHECK(foto LIKE '%.%'));*/

/*PRIMARIAS*/

ALTER TABLE Participantes ADD CONSTRAINT PK_Participantes PRIMARY KEY (tid,nid);
ALTER TABLE Contactos ADD CONSTRAINT PK_Contactos PRIMARY KEY (tidContacto,nidContacto,tidAtleta,nidAtleta);
ALTER TABLE Atletas ADD CONSTRAINT PK_Atletas PRIMARY KEY (tid,nid);
ALTER TABLE EntrenadoPor ADD CONSTRAINT PK_EntrenadoPor PRIMARY KEY (tidEntrenador,nidEntrenador,tidAtleta,nidAtleta);
ALTER TABLE Entrenadores ADD CONSTRAINT PK_Entrenadores PRIMARY KEY (tid,nid);
ALTER TABLE SimilarA ADD CONSTRAINT PK_SimilarA PRIMARY KEY (evaluacion1,evaluacion2);
ALTER TABLE Sesiones ADD CONSTRAINT PK_Sesiones PRIMARY KEY (idSesion);
ALTER TABLE Libres ADD CONSTRAINT PK_Libres PRIMARY KEY (numero);
ALTER TABLE Planeadas ADD CONSTRAINT PK_Planeadas PRIMARY KEY (numero);
ALTER TABLE Actividades ADD CONSTRAINT PK_Actividades PRIMARY KEY (numero);
ALTER TABLE Registros ADD CONSTRAINT PK_Registros PRIMARY KEY (numero);
ALTER TABLE Evaluaciones ADD CONSTRAINT PK_Evaluaciones PRIMARY KEY (numero);
ALTER TABLE Fotos ADD CONSTRAINT PK_Fotos PRIMARY KEY (actividad,foto);

/*UNICAS*/

ALTER TABLE Evaluaciones ADD CONSTRAINT UK_Evaluacion1 UNIQUE (comentarios);
ALTER TABLE Evaluaciones ADD CONSTRAINT UK_Evaluacion2 UNIQUE (actividad);

/*FORANEAS*/

ALTER TABLE Contactos ADD CONSTRAINT FK_Contactos_Participantes FOREIGN KEY (tidContacto,nidContacto) REFERENCES Participantes(tid,nid);
ALTER TABLE Contactos ADD CONSTRAINT FK_Contactos_Atletas FOREIGN KEY (tidAtleta,nidAtleta) REFERENCES Atletas(tid,nid);
ALTER TABLE Atletas ADD CONSTRAINT FK_Atletas_Participantes FOREIGN KEY (tid,nid) REFERENCES Participantes(tid,nid);
ALTER TABLE EntrenadoPor ADD CONSTRAINT FK_EntrePor_Entrenadores FOREIGN KEY (tidEntrenador,nidEntrenador) REFERENCES Entrenadores(tid,nid);
ALTER TABLE EntrenadoPor ADD CONSTRAINT FK_EntrePor_Atletas FOREIGN KEY (tidAtleta,nidAtleta) REFERENCES Atletas(tid,nid);
ALTER TABLE Entrenadores ADD CONSTRAINT FK_Entrenadores_Participantes FOREIGN KEY (tid,nid) REFERENCES Participantes(tid,nid);
ALTER TABLE SimilarA ADD CONSTRAINT FK_SimilarA_Evaluacion1 FOREIGN KEY (evaluacion1) REFERENCES Evaluaciones(numero);
ALTER TABLE SimilarA ADD CONSTRAINT FK_SimilarA_Evaluacion2 FOREIGN KEY (evaluacion2) REFERENCES Evaluaciones(numero);
ALTER TABLE Sesiones ADD CONSTRAINT FK_Sesion_Atletas FOREIGN KEY (tidAtleta,nidAtleta) REFERENCES Atletas(tid,nid);
ALTER TABLE Libres ADD CONSTRAINT FK_Libres_Atletas FOREIGN KEY (tidAtleta,nidAtleta) REFERENCES Atletas(tid,nid);
ALTER TABLE Planeadas ADD CONSTRAINT FK_Planeadas_Sesiones FOREIGN KEY (sesion) REFERENCES Sesiones(idSesion);
ALTER TABLE Registros ADD CONSTRAINT FK_Registros_Actividades FOREIGN KEY (actividad) REFERENCES Actividades(numero);
ALTER TABLE Evaluaciones ADD CONSTRAINT FK_Eval_Actividades FOREIGN KEY (actividad) REFERENCES Actividades(numero);
ALTER TABLE Fotos ADD CONSTRAINT FK_Fotos_Actividades FOREIGN KEY (actividad) REFERENCES Actividades(numero);

/*POBLAR NO OK: CONTRUCCION PROTEGIENDO*/

INSERT INTO Atletas VALUES ('102','2137321','+','x'); /*CK_rh*/
INSERT INTO Actividades VALUES (NULL,TO_DATE('2020/03/1','yyyy/mm/dd'),2400,5,80.5); /*PK_Actividad*/
INSERT INTO Fotos VALUES(1,'3g4ikd/sad'); /*CK_foto*/
INSERT INTO SimilarA VALUES(1,3,120);/*CK_porcentaje*/

INSERT INTO Participantes VALUES ('005','0005', 'anderson@hotmail.com', 'Venezuela', TO_DATE('2016/06/29','yyyy/mm/dd'),NULL);/*PK_Participante*/
INSERT INTO Participantes VALUES ('005','0005', 'valentina@hotmail.com', 'Colombia', TO_DATE('2016/06/29','yyyy/mm/dd'),NULL);/*PK_Participante*/

/*CONSULTAS OPERATIVAS*/

/*
Poblar mockaroo
*/

/*LAB04*/

/*Registrar evaluación*/

CREATE OR REPLACE TRIGGER T1 
BEFORE INSERT ON Evaluaciones
FOR EACH ROW
BEGIN
    :new.fecha := SYSDATE();
END T1;

/*CREATE OR REPLACE TRIGGER T2 
BEFORE INSERT ON Evaluaciones
FOR EACH ROW
BEGIN
    :new.numero := new.numero+1;
END T2;/*
/*
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('962', '892366242323883', '962@escuelaing.edu.co', 'Indonesia', '2018-06-26', '2019-06-01');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('773', '129322706960453', '773@escuelaing.edu.co', 'Honduras', '2019-02-24', '2019-07-28');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('280', '051035569084282', '280@escuelaing.edu.co', 'China', '2017-04-30', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('195', '645682411953103', '195@escuelaing.edu.co', 'China', '2017-04-25', '2020-01-10');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('407', '412478502820588', '407@escuelaing.edu.co', 'United States', '2018-12-29', '2020-01-16');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('623', '771300959762327', '623@escuelaing.edu.co', 'Cuba', '2017-09-26', '2019-12-01');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('151', '206724982814568', '151@escuelaing.edu.co', 'South Korea', '2019-12-27', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('530', '113405724013664', '530@escuelaing.edu.co', 'China', '2019-01-30', '2019-12-01');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('823', '634866990018307', '823@escuelaing.edu.co', 'United States', '2017-08-13', '2019-10-18');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('034', '074440800543572', '034@escuelaing.edu.co', 'Philippines', '2019-06-24', '2020-01-22');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('964', '403485210730838', '964@escuelaing.edu.co', 'Russia', '2019-06-29', '2019-08-25');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('517', '387892829993306', '517@escuelaing.edu.co', 'Sweden', '2019-10-26', '2019-08-30');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('314', '212926653931029', '314@escuelaing.edu.co', 'Indonesia', '2019-07-10', '2019-10-07');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('343', '394599298969632', '343@escuelaing.edu.co', 'Ukraine', '2018-09-01', '2019-11-05');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('120', '051335136275047', '120@escuelaing.edu.co', 'China', '2019-10-30', '2019-12-08');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('889', '149627002460140', '889@escuelaing.edu.co', 'Uruguay', '2019-12-01', '2019-12-14');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('720', '360748582135908', '720@escuelaing.edu.co', 'Nepal', '2018-04-10', '2019-09-13');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('689', '254977878435797', '689@escuelaing.edu.co', 'Poland', '2019-03-19', '2019-04-22');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('210', '651840200234141', '210@escuelaing.edu.co', 'China', '2017-10-22', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('312', '923516568724987', '312@escuelaing.edu.co', 'Ivory Coast', '2017-10-06', '2020-01-01');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('482', '782508821385474', '482@escuelaing.edu.co', 'France', '2019-09-11', '2019-05-11');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('956', '684869913390770', '956@escuelaing.edu.co', 'Czech Republic', '2017-09-29', '2020-02-24');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('080', '669145118495442', '080@escuelaing.edu.co', 'Indonesia', '2019-02-05', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('653', '112400514551901', '653@escuelaing.edu.co', 'Mauritania', '2018-01-28', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('861', '559331107373779', '861@escuelaing.edu.co', 'China', '2018-08-03', '2019-07-15');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('130', '456284223145547', '130@escuelaing.edu.co', 'Poland', '2018-01-28', '2019-10-04');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('320', '280887961314898', '320@escuelaing.edu.co', 'Syria', '2019-01-22', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('493', '516429193859958', '493@escuelaing.edu.co', 'Ukraine', '2019-03-25', '2019-12-17');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('981', '298842740665200', '981@escuelaing.edu.co', 'Armenia', '2019-05-27', '2019-10-17');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('180', '049661570696191', '180@escuelaing.edu.co', 'Cameroon', '2019-02-16', '2020-01-05');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('717', '526116415949319', '717@escuelaing.edu.co', 'China', '2020-03-09', '2019-06-14');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('939', '900328728269276', '939@escuelaing.edu.co', 'Russia', '2017-06-29', '2019-04-20');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('302', '359431836148154', '302@escuelaing.edu.co', 'Czech Republic', '2019-06-11', '2019-12-19');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('583', '587827067414852', '583@escuelaing.edu.co', 'Canada', '2018-10-29', '2019-06-19');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('639', '108149619752180', '639@escuelaing.edu.co', 'Sweden', '2018-11-19', '2020-01-26');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('130', '741115533556101', '130@escuelaing.edu.co', 'Japan', '2017-04-22', '2019-04-07');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('663', '195367284171470', '663@escuelaing.edu.co', 'China', '2019-04-03', '2019-12-13');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('188', '106365431155858', '188@escuelaing.edu.co', 'Indonesia', '2019-05-19', '2019-06-05');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('387', '152214540990282', '387@escuelaing.edu.co', 'China', '2018-09-27', '2019-05-07');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('429', '512418410211218', '429@escuelaing.edu.co', 'Finland', '2018-01-19', '2019-04-27');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('717', '377794055703756', '717@escuelaing.edu.co', 'Czech Republic', '2019-08-08', '2019-12-23');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('716', '579337824011654', '716@escuelaing.edu.co', 'Tanzania', '2018-07-13', '2019-09-17');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('823', '515978050500117', '823@escuelaing.edu.co', 'Comoros', '2019-08-25', '2020-03-06');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('135', '514335511576579', '135@escuelaing.edu.co', 'Canada', '2017-12-19', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('027', '047519028418283', '027@escuelaing.edu.co', 'China', '2017-03-20', '2019-07-16');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('292', '140516953779948', '292@escuelaing.edu.co', 'Netherlands', '2019-07-22', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('070', '744869878925277', '070@escuelaing.edu.co', 'Ethiopia', '2018-03-06', '2019-11-05');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('093', '692253547001226', '093@escuelaing.edu.co', 'Czech Republic', '2019-05-08', '2019-06-30');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('811', '172557457487014', '811@escuelaing.edu.co', 'China', '2017-05-14', '2019-08-28');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('457', '196492390945675', '457@escuelaing.edu.co', 'Sweden', '2017-05-07', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('146', '649185022484645', '146@escuelaing.edu.co', 'Peru', '2019-01-08', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('130', '374772104449004', '130@escuelaing.edu.co', 'Uganda', '2020-01-25', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('774', '064075709002564', '774@escuelaing.edu.co', 'Uganda', '2018-07-31', '2019-09-29');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('220', '687903972810400', '220@escuelaing.edu.co', 'Lithuania', '2018-07-15', '2019-11-21');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('648', '515815483561548', '648@escuelaing.edu.co', 'Nigeria', '2017-03-13', '2019-04-04');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('505', '380091992983452', '505@escuelaing.edu.co', 'China', '2017-06-20', '2020-03-01');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('251', '388005759257192', '251@escuelaing.edu.co', 'China', '2019-08-22', '2019-06-14');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('087', '705350256057079', '087@escuelaing.edu.co', 'Mongolia', '2019-05-23', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('054', '399966446172442', '054@escuelaing.edu.co', 'Philippines', '2017-08-07', '2019-11-11');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('959', '663017031609784', '959@escuelaing.edu.co', 'Serbia', '2018-04-26', '2019-11-08');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('564', '905635827358802', '564@escuelaing.edu.co', 'Nigeria', '2019-02-25', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('212', '413040866308356', '212@escuelaing.edu.co', 'Slovenia', '2018-03-16', '2019-05-22');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('096', '095991106028319', '096@escuelaing.edu.co', 'Myanmar', '2017-08-19', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('900', '267386646477938', '900@escuelaing.edu.co', 'China', '2017-03-22', '2019-12-08');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('171', '824955008812944', '171@escuelaing.edu.co', 'Indonesia', '2018-08-24', '2019-07-30');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('917', '563371107821493', '917@escuelaing.edu.co', 'Russia', '2018-05-17', '2019-09-27');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('173', '012705039420333', '173@escuelaing.edu.co', 'Indonesia', '2019-05-30', '2020-01-02');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('991', '178964539888250', '991@escuelaing.edu.co', 'Philippines', '2017-09-07', '2020-03-02');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('171', '302344558893291', '171@escuelaing.edu.co', 'Russia', '2018-06-12', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('771', '927485659271360', '771@escuelaing.edu.co', 'Russia', '2019-09-26', '2020-02-19');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('633', '853407929984357', '633@escuelaing.edu.co', 'China', '2019-04-16', '2019-11-03');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('565', '554871046676367', '565@escuelaing.edu.co', 'China', '2020-01-22', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('527', '409687081893183', '527@escuelaing.edu.co', 'China', '2017-08-09', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('669', '782334934505761', '669@escuelaing.edu.co', 'China', '2019-02-09', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('537', '091740592017393', '537@escuelaing.edu.co', 'Ukraine', '2018-11-01', '2019-04-01');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('770', '745365788867246', '770@escuelaing.edu.co', 'Philippines', '2017-03-16', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('050', '761019902922161', '050@escuelaing.edu.co', 'Sweden', '2018-06-04', '2020-02-21');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('526', '540965823825531', '526@escuelaing.edu.co', 'Portugal', '2017-03-13', '2019-12-23');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('098', '763537281162553', '098@escuelaing.edu.co', 'United States', '2019-10-04', '2019-06-15');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('883', '736921610777878', '883@escuelaing.edu.co', 'Indonesia', '2019-03-29', '2020-02-07');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('009', '700380036149757', '009@escuelaing.edu.co', 'Philippines', '2020-01-05', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('791', '887978997765145', '791@escuelaing.edu.co', 'China', '2019-11-16', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('981', '474238201190997', '981@escuelaing.edu.co', 'Brazil', '2017-10-19', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('046', '249070681483933', '046@escuelaing.edu.co', 'North Korea', '2017-07-04', '2019-08-22');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('895', '141654810602892', '895@escuelaing.edu.co', 'Saint Vincent and the Grenadines', '2020-03-03', '2019-04-06');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('242', '021422088216577', '242@escuelaing.edu.co', 'China', '2017-07-24', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('137', '438904367537887', '137@escuelaing.edu.co', 'Gabon', '2019-08-09', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('935', '721394550314609', '935@escuelaing.edu.co', 'China', '2019-06-28', '2019-06-26');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('651', '851627574612439', '651@escuelaing.edu.co', 'Norway', '2017-10-27', '2019-07-01');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('381', '490345763229860', '381@escuelaing.edu.co', 'Bangladesh', '2019-09-03', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('737', '925885386263017', '737@escuelaing.edu.co', 'Portugal', '2018-11-13', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('039', '062962218439826', '039@escuelaing.edu.co', 'Luxembourg', '2017-07-13', '2019-10-05');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('819', '077290511171013', '819@escuelaing.edu.co', 'Serbia', '2019-03-29', '2019-11-30');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('035', '092097719725806', '035@escuelaing.edu.co', 'Switzerland', '2019-02-04', '2019-05-22');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('557', '400499447727047', '557@escuelaing.edu.co', 'Philippines', '2020-02-15', '2019-08-10');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('444', '970577329511984', '444@escuelaing.edu.co', 'China', '2018-12-24', '2019-10-30');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('707', '646703748342255', '707@escuelaing.edu.co', 'Czech Republic', '2019-05-25', '2019-10-22');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('566', '629426948789483', '566@escuelaing.edu.co', 'Sweden', '2018-06-18', null);
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('563', '130947901712448', '563@escuelaing.edu.co', 'France', '2018-11-30', '2019-12-30');
insert into Participante (tid, nid, email, pais, fRegistro, fRetiro) values ('593', '524170161785828', '593@escuelaing.edu.co', 'Sweden', '2017-05-10', '2020-02-10');
*/
