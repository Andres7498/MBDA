ALTER TABLE CadenasDeCines ADD CONSTRAINT FK_Cadenas_Isab 
    FOREIGN KEY (idEmpleado) REFERENCES ISAB(idEmpleado);
    
ALTER TABLE CadenasDeCines ADD CONSTRAINT FK_Cadenas_AreaAnalisis 
    FOREIGN KEY (idUsuario) REFERENCES AreasDeAnalisisDeUsuarios(idUsuario);

ALTER TABLE Teatros ADD CONSTRAINT FK_Teatros_Cadenas 
    FOREIGN KEY (nit) REFERENCES CadenasDeCines(nit);
    
ALTER TABLE Teatros ADD CONSTRAINT FK_Teatros_AreaAnalisis 
    FOREIGN KEY (idUsuario) REFERENCES AreasDeAnalisisDeUsuarios(idUsuario); 

ALTER TABLE ClientesEnTeatros ADD CONSTRAINT FK_CliEnTea_Teatros 
    FOREIGN KEY (idTeatro) REFERENCES Teatros(idTeatro);
    
ALTER TABLE ClientesEnTeatros ADD CONSTRAINT FK_CliEnTea_Clientes 
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente);

ALTER TABLE Clientes ADD CONSTRAINT FK_Clientes_Teatros 
    FOREIGN KEY (idTeatro) REFERENCES Teatros(idTeatro); 
    
ALTER TABLE Clientes ADD CONSTRAINT FK_Clientes_Publicidades 
    FOREIGN KEY (idPublicidad) REFERENCES Publicidades(idPublicidad);
    
ALTER TABLE Clientes ADD CONSTRAINT FK_Clientes_AreaAnalisis 
    FOREIGN KEY (idUsuario) REFERENCES AreasDeAnalisisDeUsuarios(idUsuario); 

ALTER TABLE Salas ADD CONSTRAINT FK_Salas_Teatro 
    FOREIGN KEY (idTeatro) REFERENCES Teatros(idTeatro);
    
ALTER TABLE Salas ADD CONSTRAINT FK_Salas_Funciones 
    FOREIGN KEY (idFuncion) REFERENCES Funciones(idFuncion);

ALTER TABLE Peliculas ADD CONSTRAINT FK_Peliculas_Generos 
    FOREIGN KEY (idGenero) REFERENCES Generos(idGenero);
    
ALTER TABLE Peliculas ADD CONSTRAINT FK_Peliculas_Funciones 
    FOREIGN KEY (idFuncion) REFERENCES Funciones(idFuncion);

ALTER TABLE Ubicaciones ADD CONSTRAINT FK_Ubicaciones_Salas 
    FOREIGN KEY (idSala) REFERENCES Salas(idSala);

ALTER TABLE EncuestasDeSatisfaccion ADD CONSTRAINT FK_Encuestas_Clientes 
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente);
    
ALTER TABLE EncuestasDeSatisfaccion ADD CONSTRAINT FK_Encuestas_AreaAnalisis 
    FOREIGN KEY (idUsuario) REFERENCES AreasDeAnalisisDeUsuarios(idUsuario);

ALTER TABLE Funciones ADD CONSTRAINT FK_Funciones_AreaAnalisis 
    FOREIGN KEY (idUsuario) REFERENCES AreasDeAnalisisDeUsuarios(idUsuario);
    
ALTER TABLE Funciones ADD CONSTRAINT FK_Funciones_Peliculas 
    FOREIGN KEY (idPelicula) REFERENCES Peliculas(idPelicula);

ALTER TABLE Taquillas ADD CONSTRAINT FK_Taquillas_Teatros 
    FOREIGN KEY (idTeatro) REFERENCES Teatros(idTeatro);

ALTER TABLE TaquillasClientes ADD CONSTRAINT FK_TaquillasClientes_Taquillas 
    FOREIGN KEY (idTaquilla) REFERENCES Taquillas(idTaquilla);
    
ALTER TABLE TaquillasClientes ADD CONSTRAINT FK_TaquillasClientes_Clientes 
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente);

ALTER TABLE Publicidades ADD CONSTRAINT FK_Publicidades_AreaAnalisis 
    FOREIGN KEY (idUsuario) REFERENCES AreasDeAnalisisDeUsuarios(idUsuario);

ALTER TABLE Pagos ADD CONSTRAINT FK_Pagos_Clientes 
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente);
    
ALTER TABLE Pagos ADD CONSTRAINT FK_Pagos_Taquillas 
    FOREIGN KEY (idTaquilla) REFERENCES Taquillas(idTaquilla);

ALTER TABLE Boletas ADD CONSTRAINT FK_Boletas_Pagos 
    FOREIGN KEY (idBoletas) REFERENCES Pagos(idPago);
    
ALTER TABLE Boletas ADD CONSTRAINT FK_Boletas_Ubicaciones 
    FOREIGN KEY (idUbicacion) REFERENCES Ubicaciones(idUbicacion);
    
ALTER TABLE Boletas ADD CONSTRAINT FK_Boletas_Funciones 
    FOREIGN KEY (idFuncion) REFERENCES Funciones(idFuncion);