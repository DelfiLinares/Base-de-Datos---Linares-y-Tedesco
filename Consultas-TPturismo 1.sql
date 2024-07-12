/* EJ 1 */
SELECT min(diasPaq) FROM Paquetes ;
/* EJ 2 */
SELECT max(diasPaq) FROM Paquetes ;
/* EJ 3 */
SELECT avg(costoPaq) FROM Paquetes WHERE diasPaq = 3 ;
/* EJ 4 */
SELECT sum(cantdepersonasAlo) FROM Alojamiento
JOIN Paquetes_has_Alojamiento ON Alojamiento_dirAlo = dirALoj 
JOIN Paquetes ON idPaquetes = Paquetes_idPaquetes 
JOIN Reservas ON Paquetes_idPaquetes = idPaquetes
WHERE fecha_inicio LIKE "2024-07-%" ;
/* EJ 5 */
SELECT lugarPaq FROM Paquetes;
/* EJ 6 */
SELECT sum(cantExcPaq) FROM Paquetes WHERE lugarPaq = "Bariloche" ;
/* EJ 7 */
SELECT count(*) FROM Reservas WHERE Paquetes_idPaquetes = 1;
/* EJ 8 */
SELECT count(*) FROM Reservas GROUP BY idPaquetes;
/* EJ 9 */
UPDATE Paquetes SET costoPAq = costoPaq * 0.10 ;
/* EJ 10 */
SELECT count(*), idAlo FROM Paquetes_has_Alojamiento GROUP BY idAlo;
/* EJ 11 */
UPDATE Paquetes SET diasPaq = diasPaq + 1 WHERE lugarPaq = "Salta";
/* EJ 12 */
SELECT sum(costoPaq), lugarPaq FROM Paquetes GROUP BY lugarPaq;
/* EJ 13 */
SELECT 	Alojamiento_idAlo FROM Paquetes
JOIN Paquetes_has_Alojamiento ON Alojamiento_dirAlo = dirAloj 
GROUP BY idAlo having count(*) > 3 ; 
/* EJ 14 */
SELECT sum(costoPaq) FROM Paquetes WHERE sum(costoPaq) > 100000 GROUP BY lugarPaq;
/* EJ 15 */
SELECT avg(costoPaq) FROM Paquetes WHERE sum(costoPaq) > 25000 GROUP BY lugarPaq;
/* EJ 16 */
SELECT avg(cantdepersonasAlo), idPaquetes FROM Alojamiento JOIN Paquetes_has_Alojamiento ON Alojamiento_idAlo;
/* EJ 17 */
SELECT max(costoPaq) FROM Paquetes GROUP BY lugarPaq;
/* EJ 18 */
SELECT count(*) FROM Reservas GROUP BY clienteTurismo_dniCT;
/* EJ 19*/
SELECT count(*) FROM Paquetes GROUP BY lugarPaq, dias ORDER BY lugarPaq, dias ASC;
/* EJ 20 */
SELECT min(costoPaq) FROM Paquetes GROUP BY lugarPaq;