
ALTER TABLE Beneficiarios ADD CONSTRAINT CK_Beneficiarios_DocumentType
CHECK (tipoDocumento='CC' OR tipoDocumento='TI');

ALTER TABLE Capacitaciones  ADD CONSTRAINT  CK_Capacitaciones_Cupos 
CHECK (cupos<21);

ALTER TABLE Voluntarios ADD CONSTRAINT CK_fechaRetiro
CHECK (fechaVinculacion < fechaRetiro < CURDATE()) 

ALTER TABLE Servicio ADD CONSTRAINT CK_Codigo
CHECK (Huerta.codigo=servicio.codigo AND eigo<>servicio.codigo