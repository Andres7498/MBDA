/*CICLO UNO. TrainingLog*/ 

Extendiendo. Contenidos

1. 
	SELECT * FROM mbda.MIEMBROS;
2.
	INSERT INTO mbda.MIEMBROS VALUES ('1105','3','85229613333938','fbm@escuelaing.co','Male','Colombia','2018-05-04',NULL,'2','2','Ankunding-Zemlak','32');
	INSERT INTO mbda.MIEMBROS VALUES ('1106','4','85229613545938','amv@escuelaing.co','Male','Colombia','2018-05-04','2019-05-04','1','3',NULL,'32');
3.
	UPDATE mbda.MIEMBROS SET EMAIL='federico@eci.com' WHERE NUMERO='1105';
	UPDATE mbda.MIEMBROS SET EMAIL='andres@eci.com' WHERE NUMERO='1106';
	DELETE FROM mbda.MIEMBROS WHERE NUMERO='1105';
	DELETE FROM mbda.MIEMBROS WHERE NUMERO='1106';
	No tenemos los privilegios para realizar estas acciones.
4.
	GRANT DELETE,UPDATE
	ON mbda.MIEMBROS
	TO bd2141130;
5.
	SELECT * INTO BD2141130.MIEMBROS FROM mbda.MIEMBROS;
6. 
	Esta en astah

Modelo físico componentes

1.
	CRUDE
	
	CREATE OR REPLACE PACKAGE PC_ACTIVIDAD IS
		PROCEDURE AD_ACTIVIDAD (xnumero IN NUMBER, xfecha IN DATE,xhora IN NUMBER,xtiempo IN NUMBER,xpulsaciones IN REAL);
		PROCEDURE AD_PLANEADA (xnumero IN NUMBER,xsesion IN NUMBER);
		PROCEDURE AD_LIBRE (xnumero IN NUMBER,xnid IN VARCHAR,xtid IN VARCHAR);
		PROCEDURE AD_REGISTRO (xnumero IN NUMBER,xactividad IN NUMBER,xfecha IN DATE,xhora IN NUMBER,xsensor IN CHAR,xvalor IN NUMBER);
		FUNCTION CO_REGISTROS_ACT RETURN SYS_RECURSOR;
	END PC_ACTIVIDAD;
	
	CREATE OR REPLACE PACKAGE PC_EVALUACION IS
		PROCEDURE AD_EVALUACION (xnumero IN NUMBER, xfecha IN DATE,xpuntaje IN NUMBER,xcomentarios IN VARCHAR,xrecomendaciones IN VARCHAR,xactividad IN NUMBER,xtid IN NUMBER,xnid IN NUMBER);
		PROCEDURE AD_SIMILARA (xevaluacion1 IN NUMBER,xevaluacion2 IN NUMBER,xporcentaje IN NUMBER);
		FUNCTION CO_EVALUACIONES RETURN SYS_RECURSOR;
		FUNCTION CO_MENORPUNTAJE RETURN SYS_RECURSOR;
	END PC_EVALUACION;
	
	CRUDI
	
	CREATE OR REPLACE PACKAGE BODY PC_ACTIVIDAD IS
		PROCEDURE AD_ACTIVIDAD (xnumero IN NUMBER, xfecha IN DATE,xhora IN NUMBER,xtiempo IN NUMBER,xpulsaciones IN REAL) IS
		BEGIN
			INSERT INTO Actividades(numero,fechaInicio,horaInicio,tiempoTotal,pulsacionesProm) VALUES (xnumero,xfecha,xhora,xtiempo,xpulsaciones);
			COMMIT;
			EXCEPTION
				WHEN OTHER THEN 
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar la actividad.');
		END;
		
		PROCEDURE AD_PLANEADA (xnumero IN NUMBER,xsesion IN NUMBER) IS
		BEGIN
			INSERT INTO Planeadas(numero,sesion) VALUES (xnumero,xsesion);
			COMMIT;
			EXCEPTION
				WHEN OTHER THEN 
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar la actividad planeada.');
		END;
		
		PROCEDURE AD_LIBRE (xnumero IN NUMBER,xnid IN VARCHAR,xtid IN VARCHAR) IS
		BEGIN
			INSERT INTO Libres(numero,tidAtleta,nidAtleta) VALUES (xnumero,xnid,xtid);
			COMMIT;
			EXCEPTION
				WHEN OTHER THEN 
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar la actividad libre.');
		END;
		
		PROCEDURE AD_REGISTRO (xnumero IN NUMBER,xnid IN VARCHAR,xtid IN VARCHAR) IS
		BEGIN
			INSERT INTO Registros(numero,actividad,fecha,hora,sensor,valor) VALUES (xnumero,xactividad,xfecha,xhora,xsensor,xvalor);
			COMMIT;
			EXCEPTION
				WHEN OTHER THEN 
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar el registro.');
		END;
		
		FUNCTION CO_REGISTROS_ACT RETURN SYS_REFCURSOR IS CO_RE SYS_REFCURSOR;
		BEGIN
		OPEN CO_RE FOR
			SELECT * FROM Registros;
			RETURN CO_RE;
		END;
	END PC_ACTIVIDAD;
	
	CREATE OR REPLACE PACKAGE BODY PC_EVALUACION IS
		PROCEDURE AD_EVALUACION (xnumero IN NUMBER, xfecha IN DATE,xpuntaje IN NUMBER,xcomentarios IN VARCHAR,xrecomendaciones IN VARCHAR,xactividad IN NUMBER,xtid IN NUMBER,xnid IN NUMBER) IS
		BEGIN
			INSERT INTO Evaluaciones(numero,fecha,puntaje,comentarios,recomendaciones,actividad,tid,nid) VALUES (xnumero,xfecha,xpuntaje,xcomentarios,xrecomendaciones,xactividad,xtid,xnid);
			COMMIT;
			EXCEPTION
				WHEN OTHER THEN 
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar la evaluacion.');
		END;
		
		PROCEDURE AD_SIMILARA (xevaluacion1 IN NUMBER,xevaluacion2 IN NUMBER,xporcentaje IN NUMBER) IS
		BEGIN
			INSERT INTO SimilarA(evaluacion1,evaluacion2,porcentaje) VALUES (xevaluacion1,xevaluacion2,xporcentaje);
			COMMIT;
			EXCEPTION
				WHEN OTHER THEN 
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar las evaluaciones similares.');
		END;
		
		FUNCTION CO_EVALUACIONES RETURN SYS_REFCURSOR IS CO_EV SYS_REFCURSOR;
		BEGIN
		OPEN CO_EV FOR
			SELECT * FROM Evaluaciones;
			RETURN CO_EV;
		END;
		
		FUNCTION CO_MENORPUNTAJE RETURN SYS_REFCURSOR IS CO_EV SYS_REFCURSOR;
		BEGIN
		OPEN CO_EV FOR
			SELECT * FROM Evaluaciones
				WHERE puntaje=MIN(puntaje);
			RETURN CO_EV;
		END;
	END EVALUACION;
	
	
RETROSPECTIVA
	1. ¿Cuál fue el tiempo total invertido en el laboratorio por cada uno de ustedes?
		3 horas cada uno
	2. ¿Cuál es el estado actual del laboratorio? ¿Por qué?
		Incompleto no tenemos la disponibilidad de tiempo ni herramientas requerida
	3. ¿Cuál consideran fue el mayor logro? ¿Por qué?
		Realizar la implementacion de los paquetes.
	4. ¿Cuál consideran que fue el mayor problema técnico? ¿Qué hicieron para resolverlo?
		No sabíamos como hacer la implementacion de los paquetes. Preguntamos a compañeros y buscamos en internet para resolverlo
	5. ¿Qué hicieron bien como equipo? ¿Qué se comprometen a hacer para mejorar los
	resultados? 
		Trabajar juntos en el laboratorio.
	