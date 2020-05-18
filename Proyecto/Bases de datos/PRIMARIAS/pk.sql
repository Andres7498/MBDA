ALTER TABLE ISAB ADD CONSTRAINT PK_ISABs PRIMARY KEY (idEmpleado);
ALTER TABLE CadenasDeCines ADD CONSTRAINT PK_CadenasDeCines PRIMARY KEY (nit);
ALTER TABLE Teatros ADD CONSTRAINT PK_Teatros PRIMARY KEY (idTeatro);
ALTER TABLE ClientesEnTeatros ADD CONSTRAINT PK_ClientesEnTeatros PRIMARY KEY (idTeatro,idCliente);
ALTER TABLE Clientes ADD CONSTRAINT PK_Clientes PRIMARY KEY (idCliente);

ALTER TABLE AreasDeAnalisisDeUsuarios ADD CONSTRAINT PK_AreasDeAnalisis PRIMARY KEY (idUsuario);
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