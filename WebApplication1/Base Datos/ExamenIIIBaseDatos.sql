Create DataBase ExamenIIIUH
GO
use ExamenIIIUH


Create table Encuestas 
(
	NumeroEncuesta Int Identity (100,1),
    NombreParticipante VarChar(50) NOT NULL,
    EdadNacimiento Int CHECK (EdadNacimiento > 18 AND EdadNacimiento < 50),
    CorreoElectronico Varchar(100) CHECK (CorreoElectronico LIKE '%_@__%.__%'),
    PartidoPolitico VarChar(10) CHECK (PartidoPolitico IN ('PLN', 'PUSC', 'PAC')),
    Constraint pk_NumeroEncuesta Primary Key (NumeroEncuesta)
)
GO
-- Procedimiento
CREATE PROCEDURE spAgregarEncuesta
    @NombreParticipante VARCHAR(50),
    @EdadNacimiento INT,
    @CorreoElectronico VARCHAR(100),
    @PartidoPolitico VARCHAR(10)
AS
BEGIN
    INSERT INTO Encuestas (NombreParticipante, EdadNacimiento, CorreoElectronico, PartidoPolitico)
    VALUES (@NombreParticipante, @EdadNacimiento, @CorreoElectronico, @PartidoPolitico);
END
GO
CREATE PROCEDURE ObtenerReporteEncuestas
AS
BEGIN
    SELECT * FROM Encuestas;
END


