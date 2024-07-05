/* UPDATE CASCADE Y DELETE RESTRICT */
INSERT INTO CamioneroDDL VALUE(11122233, "martin", "gonzalez", 321, "Constituyentes 434", 600000, "CABA");
UPDATE CamioneroDDL SET dni = 11222333 WHERE dni = 11122233;
SELECT dni FROM CamioneroDDL;
INSERT INTO ProvinciaDDL VALUE(1, "Santa Cruz");
DELETE FROM ProvinciaDDL WHERE codigoProv = 1 ;

/* DELETE RESTRICT Y UPDATE SET NULL */
INSERT INTO AlojamientoDDL VALUE(6, "Santa Cruz", "5 estrellas", 5555555, 2, 1, 6, 0, 0, 1) ;
DELETE FROM AlojamientoDDL WHERE idAlo = 6 ;
UPDATE AlojamientoDDL SET TelAlo = 33333333 WHERE dirAlo = "Santa Cruz" ;
SELECT * FROM AlojamientoDDL ;

/* DELETE NULL Y UPDATE RESTRICT */
INSERT INTO clientesDDL VALUE (123456789, "Martinez", "Delfina", 01234567, 7654321, "Albarellos 34") ;
UPDATE clientesDDL SET dni = 01234567 WHERE dir = "Albarellos 34"; 
SELECT * FROM clientesDDL ;

/* DELETE CASCADE Y UPDATE RESTRICT*/
INSERT INTO ClienteDDL VALUE (123456789, "mariela", "linares", "Albarellos 34", "2008-05-02") ;
DELETE FROM ClienteDDL WHERE nomCliente = "mariela"; 
SELECT * FROM ClienteDDL ;