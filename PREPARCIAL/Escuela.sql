
ALTER TABLE Beneficiarios ADD CONSTRAINT CK_Beneficiarios_DocumentType
CHECK (tipoDocumento='CC' OR tipoDocumento='TI');

ALTER TABLE Capacitaciones  ADD CONSTRAINT  CK_Capacitaciones_Cupos 
CHECK (cupos<21);

ALTER TABLE Voluntarios ADD CONSTRAINT CK_fechaRetiro
CHECK (fechaVinculacion < fechaRetiro < CURDATE()) 

ALTER TABLE Servicio ADD CONSTRAINT CK_Codigo
CHECK (Huertas.codigo=Servicios.codigo AND Empleos.codigo<>Servicios.codigo AND Capacitaciones.codigo<>Servicios.codigo AND ValoracionesMedicas.codigo<>Servicios.codigo) 
OR (Empleos.codigo= Servicios.codigo AND Huertas.codigo<>Servicios.codigo  AND Capacitaciones.codigo<>Servicios.codigo AND ValoracionesMedicas.codigo<>Servicios.codigo) 
OR (Capacitaciones.codigo= Servicios.codigo AND Huertas.codigo<>Servicios.codigo  AND Empleos.codigo<>Servicios.codigo AND ValoracionesMedicas.codigo<>Servicios.codigo) 
OR (ValoracionesMedicas.codigo= Servicios.codigo AND Huertas.codigo<>Servicios.codigo  AND Empleos.codigo<>Servicios.codigo AND Capacitaciones.codigo<>Servicios.codigo)