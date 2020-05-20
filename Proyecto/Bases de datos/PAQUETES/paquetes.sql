CREATE OR REPLACE PACKAGE PC_PELICULA IS
	PROCEDURE AD_FUNCION (xidFuncion IN VARCHAR,xhoraInicio IN DATE,xhoraFin IN DATE,xidUsuario in VARCHAR,xidPelicula IN VARCHAR);
	PROCEDURE AD_PELICULA (xidPelicula IN VARCHAR, xnombre IN VARCHAR,xdirector IN VARCHAR,xfechaEstreno IN DATE,xduracion IN NUMBER,xtipoPublico IN VARCHAR,xidGenero IN VARCHAR);
	PROCEDURE AD_GENERO (xidGenero IN VARCHAR,xclasificacion IN VARCHAR,xnombre IN VARCHAR);
	FUNCTION CO_VER_CLASIF RETURN SYS_RECURSOR;
END PC_PELICULA;
	
CREATE OR REPLACE PACKAGE PC_CINE IS
	PROCEDURE AD_CADENA_CINE (xnit IN VARCHAR, xnombre IN VARCHAR,xrazonSocial IN VARCHAR,xfechaDeCreacion IN DATE,xidEmpleado IN VARCHAR,xidUsuario IN VARCHAR);
	PROCEDURE AD_TEATRO (xidTeatro IN VARCHAR,xciudad IN VARCHAR,xnumeroDeSalas IN NUMBER,xnit IN VARCHAR,xidUsuario IN VARCHAR);
	PROCEDURE AD_SALA (xidSala IN VARCHAR,xcapacidad IN NUMBER,xdisponibilidad IN NUMBER,xidTeatro IN VARCHAR,xidFuncion IN VARCHAR);
END PC_CINE;

CREATE OR REPLACE PACKAGE PC_PAGO IS
	PROCEDURE AD_TAQUILLA (xidTaquilla IN VARCHAR, xnumeroDeCaja IN VARCHAR,xidTeatro IN VARCHAR);
	PROCEDURE AD_TAQ_CLIENTES (xidTaquilla IN VARCHAR,xidCliente IN VARCHAR);
	PROCEDURE AD_PAGO (xidPago IN VARCHAR,xmedioDePago IN VARCHAR,xfechaDeCompra IN DATE,xprecio IN NUMBER,xidCliente IN VARCHAR,xidTaquilla IN VARCHAR);
	PROCEDURE AD_BOLETA (xidBoletas IN VARCHAR,xpelicula IN VARCHAR,xfecha IN DATE,xidUbicacion IN VARCHAR,xidFuncion IN VARCHAR);
END PC_PAGO;


CREATE OR REPLACE PACKAGE BODY PC_PELICULA IS
		PROCEDURE AD_FUNCION (xidFuncion IN VARCHAR,xhoraInicio IN DATE,xhoraFin IN DATE,xidUsuario in VARCHAR,xidPelicula IN VARCHAR) IS
		BEGIN
			INSERT INTO Funciones(idFuncion,horaInicio,horaFin,idUsuario,idPelicula) VALUES (xidFuncion,xhoraInicio,xhoraFin,xidUsuario,xidPelicula);
			COMMIT;
			EXCEPTION
				WHEN OTHERS THEN 
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar la funcion.');
		END;
		
		PROCEDURE AD_PELICULA (xidPelicula IN VARCHAR, xnombre IN VARCHAR,xdirector IN VARCHAR,xfechaEstreno IN DATE,xduracion IN NUMBER,xtipoPublico IN VARCHAR,xidGenero IN VARCHAR) IS
		BEGIN
			INSERT INTO Peliculas(idPelicula,nombre,director,fechaEstreno,duracion,tipoPublico,idGenero) VALUES (xidPelicula,xnombre,xdirector,xfechaEstreno,xduracion,xtipoPublico,xidGenero);
			COMMIT;
			EXCEPTION
				WHEN OTHERS THEN 
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar la pelicula.');
		END;
		
		PROCEDURE AD_GENERO (xidGenero IN VARCHAR,xclasificacion IN VARCHAR,xnombre IN VARCHAR) IS
		BEGIN
			INSERT INTO Generos(idGenero,clasificacion,nombre) VALUES (xidGenero,xclasificacion,xnombre);
			COMMIT;
			EXCEPTION
				WHEN OTHERS THEN 
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar el genero.');
		END;
		
		FUNCTION CO_VER_CLASIF RETURN SYS_REFCURSOR IS CO_RE SYS_REFCURSOR;
		BEGIN
		OPEN CO_CLAS FOR
			SELECT clasificacion FROM Generos;
			RETURN CO_CLAS;
		END;
	END PC_PELICULA;
	
CREATE OR REPLACE PACKAGE BODY PC_CINE IS
		PROCEDURE AD_CADENA_CINE (xnit IN VARCHAR, xnombre IN VARCHAR,xrazonSocial IN VARCHAR,xfechaDeCreacion IN DATE,xidEmpleado IN VARCHAR,xidUsuario IN VARCHAR) IS
		BEGIN
			INSERT INTO CadenasDeCines(nit,nombre,razonSocial,fechaDeCreacion,idEmpleado,idUsuario) VALUES (xnit,xnombre,xrazonSocial,xfechaDeCreacion,xidEmpleado,xidUsuario);
			COMMIT;
			EXCEPTION
				WHEN OTHERS THEN 
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar la cadena de cines.');
		END;
		
		PROCEDURE AD_TEATRO (xidTeatro IN VARCHAR,xciudad IN VARCHAR,xnumeroDeSalas IN NUMBER,xnit IN VARCHAR,xidUsuario IN VARCHAR) IS
		BEGIN
			INSERT INTO Teatros(idTeatro,ciudad,numeroDeSalas,nit,idUsuario) VALUES (xidTeatro,xciudad,xnumeroDeSalas,xnit,xidUsuario);
			COMMIT;
			EXCEPTION
				WHEN OTHERS THEN 
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar el teatro.');
		END;
		
		PROCEDURE AD_SALA (xidSala IN VARCHAR,xcapacidad IN NUMBER,xdisponibilidad IN NUMBER,xidTeatro IN VARCHAR,xidFuncion IN VARCHAR) IS
		BEGIN
			INSERT INTO Salas(idSala,capacidad,disponibilidad,idTeatro,idFuncion) VALUES (xidSala,xcapacidad,xdisponibilidad,xidTeatro,xidFuncion);
			COMMIT;
			EXCEPTION
				WHEN OTHERS THEN 
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar la sala.');
		END;
	END PC_CINE;
	
	CREATE OR REPLACE PACKAGE BODY PC_PAGO IS
		PROCEDURE AD_TAQUILLA (xidTaquilla IN VARCHAR, xnumeroDeCaja IN VARCHAR,xidTeatro IN VARCHAR) IS
		BEGIN
			INSERT INTO Taquillas(idTaquilla,numeroDeCaja,idTeatro) VALUES (xidTaquilla,xnumeroDeCaja,xidTeatro);
			COMMIT;
			EXCEPTION
				WHEN OTHERS THEN 
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar la taquilla.');
		END;
		
		PROCEDURE AD_TAQ_CLIENTES (xidTaquilla IN VARCHAR,xidCliente IN VARCHAR) IS
		BEGIN
			INSERT INTO TaquillasClientes(idTaquilla,idCliente) VALUES (xidTaquilla,xidCliente);
			COMMIT;
			EXCEPTION
				WHEN OTHERS THEN 
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar la taquilla y el cliente.');
		END;
		
		PROCEDURE AD_PAGO (xidPago IN VARCHAR,xmedioDePago IN VARCHAR,xfechaDeCompra IN DATE,xprecio IN NUMBER,xidCliente IN VARCHAR,xidTaquilla IN VARCHAR) IS
		BEGIN
			INSERT INTO Pagos(idPago,medioDePago,fechaDeCompra,precio,idCliente,idTaquilla) VALUES (xidPago,xmedioDePago,xfechaDeCompra,xprecio,xidCliente,xidTaquilla);
			COMMIT;
			EXCEPTION
				WHEN OTHERS THEN 
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20001, 'No se puede registrar el pago.');
		END;
		
		PROCEDURE AD_BOLETA (xidBoletas IN VARCHAR,xpelicula IN VARCHAR,xfecha IN DATE,xidUbicacion IN VARCHAR,xidFuncion IN VARCHAR) IS
		BEGIN
			INSERT INTO Boletas(idBoletas,pelicula,fecha,idUbicacion,idFuncion) VALUES (xidBoletas,xpelicula,xfecha,xidUbicacion,xidFuncion);
			COMMIT;
			EXCEPTION
				WHEN OTHERS THEN 
				ROLLBACK;
				RAISE_APPLICATION_ERROR(-20001, 'No se puede registrar el pago de boleta.');
		END;
	END PC_PAGO;