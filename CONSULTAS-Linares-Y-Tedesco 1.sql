/* CONSULTAS EJERCICIO 5 */
select nombreMedico from Medico where especialidadMedico = "traumatólogo" order by nombreMedico ;
delete from Ingreso where ingreso_fecha < "2018-05-03" ;
select ingreso_cama from Ingreso where id_Ingreso = "000" ;
update Medico set especialidadMedico = "pediatra" where num_Medico = "05" ;
select nombreMedico and num_Medico from Medico where nombreMedico like "a%" ;

/* CONSULTAS EJERCICIO 6 */
SELECT descProducto and precioProducto from productoEJ6 where precioproducto > "1000" order by precioProducto desc ;
SELECT apellidoCliente from clienteEJ6 where apellidoCliente like "p%" ;
DELETE FROM productoEJ6 WHERE descProducto = "" ;
SELECT productoEJ6_idProducto from productoEJ6_has_proveedorEJ6 where proveedorEJ6_codProveedor = "7" ;
SELECT descProducto and precioProducto from productoEJ6 ;