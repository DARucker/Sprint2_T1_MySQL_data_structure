use optica;

insert into cliente values
('1', 'cliente_1', 'cliente_1@mail.com', '2022-12-01', null),
('2', 'cliente_2', 'cliente_2@mail.com', '2022-02-01', '1'),
('3', 'cliente_3', 'cliente_3@mail.com', '2022-03-01', null),
('4', 'cliente_4', 'cliente_1@mail.com', '2022-04-01', '1'),
('5', 'cliente_5', 'cliente_1@mail.com', '2022-05-01', null),
('6', 'cliente_6', 'cliente_1@mail.com', '2022-06-01', '1'),
('7', 'cliente_7', 'cliente_1@mail.com', '2022-07-01', '2'),
('8', 'cliente_8', 'cliente_1@mail.com', '2022-08-01', null),
('9', 'cliente_9', 'cliente_1@mail.com', '2022-09-01', null);

insert into proveedor values
('1', 'proveedor1','11111111A'),
('2', 'proveedor2','11111112B'),
('3', 'proveedor3','11111113C'),
('4', 'proveedor4','11111114D'),
('5', 'proveedor5','11111115E');

insert into vendedor values
('1', 'juan', 'Uno'),
('2', 'Lio', 'Messi'),
('3', 'Charly', 'Garcia'),
('4', 'Cacho', 'Tirao');

insert into domicilio values
('1', 'Balmes', '1', '0', 'BCN', '080001', '900900900', '901901901', default, null, '1'), 
('2', 'Balmes', '2', '0', 'BCN', '080001', '900900900', '901901901', default, null, '2'),
('3', 'Balmes', '3', '0', 'BCN', '080001', '900900900', '901901901', default, null, '3'),
('4', 'Balmes', '4', '0', 'BCN', '080001', '900900900', '901901901', default, null, '4'),
('5', 'Balmes', '5', '0', 'BCN', '080001', '900900900', '901901901', default, null, '5'),
('6', 'Balmes', '6', '0', 'BCN', '080001', '900900900', '901901901', default, null, '6'),
('7', 'Balmes', '7', '0', 'BCN', '080001', '900900900', '901901901', default, null, '7'),
('8', 'Balmes', '8', '0', 'BCN', '080001', '900900900', '901901901', default, null, '8'),
('9', 'Balmes', '9', '0', 'BCN', '080001', '900900900', '901901901', default, null, '9'),
('10', 'Diagonal', '1', '0', 'BCN', '080001', '900900900', '901901901', default, '1', null),
('11', 'Diagonal', '2', '0', 'BCN', '080001', '900900900', '901901901', default, '2', null),
('12', 'Diagonal', '3', '0', 'BCN', '080001', '900900900', '901901901', default, '3', null),
('13', 'Diagonal', '4', '0', 'BCN', '080001', '900900900', '901901901', default, '4', null),
('14', 'Diagonal', '5', '0', 'BCN', '080001', '900900900', '901901901', default, '5', null);

insert into producto values
('1', 'Ray Ban', '0', 'F', 'Blanco', 'Negro', '1.00', '5'),
('2', 'Ray Ban', '1', 'F', 'Blanco', 'Negro', '2.00', '5'),
('3', 'Ray Ban', '2', 'F', 'Blanco', 'Negro', '3.00', '5'),
('4', 'Oakley', '0', 'F', 'Amarillo', 'Negro', '10.00', '2'),
('5', 'Oakley', '0', 'F', 'Blanco', 'Negro', '15.00', '2'),
('6', 'Oakley', '0', 'F', 'Azul', 'Negro', '16.00', '2'),
('7', 'Oakley', '0', 'F', 'Negro', 'Negro', '17.00', '2'),
('8', 'Armani', '0', 'F', 'Negro', 'Negro', '100.00', '3'),
('9', 'Armani', '0', 'F', 'Negro', 'Negro', '100.00', '3'),
('10', 'Armani', '0', 'F', 'Negro', 'Negro', '100.00', '3'),
('11', 'Armani', '0', 'F', 'Negro', 'Negro', '100.00', '3'),
('12', 'Armani', '0', 'F', 'Negro', 'Negro', '100.00', '3');

insert into ventas values
('1', '1', '1', '1', '2022-01-01'),
('2', '1', '1', '2', '2022-01-01'),
('3', '1', '1', '3', '2022-01-01'),
('4', '2', '1', '4', '2022-01-01'),
('5', '3', '1', '1', '2022-01-01'),
('6', '4', '1', '2', '2022-02-01'),
('7', '5', '1', '3', '2022-02-01'),
('8', '2', '1', '4', '2022-02-01'),
('9', '3', '1', '1', '2022-02-01'),
('10', '4', '1', '2', '2022-03-02'),
('11', '2', '2', '1', '2022-03-02'),
('12', '2', '3', '2', '2022-03-02'),
('13', '3', '4', '2', '2022-03-02'),
('14', '3', '5', '3', '2022-03-02'),
('15', '4', '6', '3', '2022-03-02'),
('16', '4', '1', '1', '2022-03-02'),
('17', '2', '2', '1', '2022-03-02'),
('18', '2', '3', '2', '2022-03-02'),
('19', '3', '4', '2', '2022-03-02'),
('20', '3', '5', '3', '2022-03-02'),
('21', '4', '6', '3', '2022-03-02'),
('22', '4', '1', '1', '2022-03-02'),
('23', '2', '2', '1', '2022-03-02'),
('24', '2', '3', '2', '2022-03-02'),
('25', '3', '4', '2', '2022-03-02'),
('26', '3', '5', '3', '2022-03-02'),
('27', '4', '6', '3', '2022-03-02'),
('28', '4', '1', '1', '2022-03-02'),
('29', '2', '2', '1', '2022-03-02'),
('30', '2', '3', '2', '2022-03-02'),
('31', '3', '4', '2', '2022-03-02'),
('32', '3', '5', '3', '2022-03-02'),
('33', '4', '6', '3', '2022-03-02'),
('34', '4', '1', '1', '2022-03-02'),
('35', '2', '2', '1', '2022-03-02'),
('36', '2', '3', '2', '2022-03-02'),
('37', '3', '4', '2', '2022-03-02'),
('38', '3', '5', '3', '2022-03-02'),
('39', '4', '6', '3', '2022-03-02'),
('40', '4', '1', '1', '2022-04-02');

-- Nuestro sistema deberá indicar quién ha sido el empleado/a que ha vendido cada anteojo.
select vt.producto_id, vt.vendedor_id, v.vendedor_nombre, v.vendedor_apellido
from ventas vt join vendedor v
-- on vt.vendedor_id = v.vendedor_id
order by vt.producto_id;

-- •	Lista el total de facturas de un cliente/a en un período determinado.
select * from ventas where cliente_id = 1 AND ventas_fecha < '2022-03-01';

-- Lista los diferentes modelos de gafas que ha vendido un empleado durante un año.
select v.ventas_id, v.ventas_fecha, v.producto_id, p.producto_marca, v.vendedor_id
from ventas v join producto p 
on v.producto_id = p.producto_id
where v.ventas_fecha > '2022-01-01' and v.ventas_fecha < '2022-03-01';

-- Lista a los diferentes proveedores que han suministrado gafas vendidas con éxito por la óptica.
select prov.proveedor_id, prov.proveedor_nombre, prod.producto_id, prod.producto_marca, v.ventas_fecha
from ventas v
join producto prod
on v.producto_id = prod.producto_id
join proveedor prov
on prod.proveedor_id = prov.proveedor_id;