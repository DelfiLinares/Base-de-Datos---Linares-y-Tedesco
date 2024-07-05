INSERT INTO clienteEJ6 VALUE ("44332211","123456","Franco","Lopez");
INSERT INTO clienteEJ6 VALUE ("55667788","654321","Olivia","Feroleto");
INSERT INTO clienteEJ6 VALUE ("44556677","112233","Rodrigo","Lizz");
INSERT INTO clienteEJ6 VALUE ("77665544","332211","Abril","Gonzalez");
INSERT INTO clienteEJ6 VALUE ("11223344","223344","Luciano","Marquez");

INSERT INTO productoEJ6 VALUE ("0000","100","3500","remera");
INSERT INTO productoEJ6 VALUE ("0001","30","4900","zapatilla");
INSERT INTO productoEJ6 VALUE ("0010","90","12500","pelota");
INSERT INTO productoEJ6 VALUE ("0011","500","100","caramelo");
INSERT INTO productoEJ6 VALUE ("0100","100","500","cartuchera");

INSERT INTO proveedorEJ6 VALUE ("1","Candela","Pataro");
INSERT INTO proveedorEJ6 VALUE ("2","Jose","Pitaro");
INSERT INTO proveedorEJ6 VALUE ("3","Roger","Pipi");
INSERT INTO proveedorEJ6 VALUE ("4","Matteo","Canelon");
INSERT INTO proveedorEJ6 VALUE ("7","Juliana","Cartas");

INSERT INTO productoEJ6_has_clienteEJ6 VALUE("0000","44332211");
INSERT INTO productoEJ6_has_clienteEJ6 VALUE("0001","55667788");
INSERT INTO productoEJ6_has_clienteEJ6 VALUE("0010","44556677");
INSERT INTO productoEJ6_has_clienteEJ6 VALUE("0011","77665544");
INSERT INTO productoEJ6_has_clienteEJ6 VALUE("0100","11223344");

INSERT INTO productoEJ6_has_proveedorEJ6 VALUE(0000,1);
INSERT INTO productoEJ6_has_proveedorEJ6 VALUE(0001,2);
INSERT INTO productoEJ6_has_proveedorEJ6 VALUE(0010,3);
INSERT INTO productoEJ6_has_proveedorEJ6 VALUE(0011,4);
INSERT INTO productoEJ6_has_proveedorEJ6 VALUE(0100,7);

SELECT descProducto and precioProducto from productoEJ6 where precioproducto > "1000" order by precioProducto desc ;
SELECT apellidoCliente from clienteEJ6 where apellidoCliente like "p%" ;
DELETE FROM productoEJ6 WHERE descProducto = "" ;
SELECT productoEJ6_idProducto from productoEJ6_has_proveedorEJ6 where proveedorEJ6_codProveedor = "7" ;
SELECT descProducto and precioProducto from productoEJ6 ;