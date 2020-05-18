ALTER TABLE CadenasDeCines
    ADD CONSTRAINT CK_razonSocial
        CHECK(razonSocial='S.A' OR razonSocial='S.A.S' OR razonSocial='LTDA' OR razonSocial='Y CIA');

ALTER TABLE AreasDeAnalisisDeUsuarios
    ADD CONSTRAINT CK_generoMasVisto
        CHECK(generoMasVisto='Terror' OR generoMasVisto='Drama' OR generoMasVisto='Suspenso'
            OR generoMasVisto='Fantasia' OR generoMasVisto='Accion' OR generoMasVisto='Comedia'
            OR generoMasVisto='Romance' OR generoMasVisto='Documentales');
    
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
        CHECK (diaDeMasAsistencia='Lunes' OR diaDeMasAsistencia='Martes' OR diaDeMasAsistencia='Miercoles' OR diaDeMasAsistencia='Jueves' OR
            diaDeMasAsistencia='Viernes' OR diaDeMasAsistencia='Sabado' OR diaDeMasAsistencia='Domingo');

ALTER TABLE EncuestasDeSatisfaccion
    ADD CONSTRAINT CK_email_encuesta
        CHECK(email LIKE '%@%.com');
    
ALTER TABLE Peliculas
    ADD CONSTRAINT CK_duracion
        CHECK (duracion LIKE 'INT:INT');