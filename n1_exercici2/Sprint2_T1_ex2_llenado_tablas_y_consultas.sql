use exercici_n2_pizzeria;

insert into provincia values
('1', 'Barcelona'),
('2', 'Girona');

insert into localidad values
('1', 'Barcelona', '1'),
('2', 'San Cougat', '1'),
('3', 'San Quirze', '1'),
('4', 'Girona', '2'),
('5', 'Besalu', '2');

insert into cliente values
('1', 'nombre_1','apellido_1', 'direccion_1','080001','900900900','1'),
('2', 'nombre_2','apellido_2', 'direccion_2','080002','900900900','2'), 
('3', 'nombre_3','apellido_3', 'direccion_3','080003','900900900','3'), 
('4', 'nombre_4','apellido_4', 'direccion_4','080004','900900900','4'), 
('5', 'nombre_5','apellido_5', 'direccion_5','080005','900900900','5'), 
('6', 'nombre_6','apellido_6', 'direccion_6','080006','900900900','1'), 
('7', 'nombre_7','apellido_7', 'direccion_7','080005','900900900','1'); 


insert into tienda values
('1','tienda_Barcelona','tienda_Diagonal_100','080001'),
('2','tienda_Girona','tienda_Av_Girona_100','080002');

insert into empleado values
('1', 'empleado_nombre_1', 'empleado_apellido_1', '11111111A', '900900900', 'cocinero','1'),
('2', 'empleado_nombre_2', 'empleado_apellido_2', '11111112A', '900900900', 'repartidor','1'),
('3', 'empleado_nombre_3', 'empleado_apellido_3', '11111113A', '900900900', 'otro','1'),
('4', 'empleado_nombre_4', 'empleado_apellido_4', '11111114A', '900900900', 'cocinero','2'),
('5', 'empleado_nombre_5', 'empleado_apellido_5', '11111115A', '900900900', 'repartidor','2'),
('6', 'empleado_nombre_6', 'empleado_apellido_6', '11111116A', '900900900', 'otro','2');

insert into categoria_pizza values
('1', 'rellena'),
('2', 'no_rellena'),
('3', 'no categorizado');

insert into producto values
('1', 'pizza_napolitana', 'napolitana_descripcion', 'napolitana.jpg', '1.00', '2'),
('2', 'pizza_fugazzeta', 'fugazzeta_descripcion', 'fugazzeta.jpg', '2.50', '1'),
('3', 'haburguesa_sola', 'sola_descripcion', 'sola.jpg', '3.90', '3'),
('4', 'hamburguesa_completa', 'completa_descripcion', 'completa.jpg', '4.30', '3'),
('5', 'coca_cola', 'cola_descripcion', 'coca_cola.jpg', '5.50', '3'),
('6', 'cerveza', 'cerveza_descripcion', 'cerveza.jpg', '6.60', '3');

insert into pedido values
('1', '2022-01-02 12:00:00', 'r', '1', '1', '1','11', '1', '1', '1'),
('2', '2022-01-02 12:00:00', 't', '2', '1', '2','12', '2', '1', '2'),
('3', '2022-02-02 12:00:00', 'r', '3', '1', '3','13', '3', '1', '1'),
('4', '2022-02-02 12:00:00', 't', '4', '1', '4','14', '4', '2', '4'),
('5', '2022-03-02 12:00:00', 'r', '5', '1', '5','15', '5', '2', '5'),
('6', '2022-04-02 12:00:00', 't', '6', '1', '6','16', '1', '2', '1'),
('7', '2022-04-02 12:00:00', 't', '6', '1', '3','16', '6', '2', '1'),
('8', '2022-04-02 12:00:00', 't', '6', '1', '0','16', '1', '2', '1'),
('9', '2022-04-02 12:00:00', 't', '6', '1', '6','16', '1', '2', '1');

insert into pedido_has_producto values
('1', '1', '1'),
('2', '1', '3'),
('3', '1', '5'),
('4', '2', '1'),
('5', '2', '2'),
('6', '2', '3'),
('7', '2', '5'),
('8', '2', '6');

-- Lista cuántos productos de categoría 'Bebidas' se han vendido en una determinada localidad.

select 
p.pedido_id, p.pedido_cantidad_bebidas, c.cliente_id, l.localidad_nombre, c.localidad_localidad_id
from pedido p
join cliente c 
join localidad l
on p.cliente_cliente_id = c.cliente_id and c.localidad_localidad_id = l.localidad_id
where c.localidad_localidad_id = 1 and p.pedido_cantidad_bebidas > 0;

-- Lista cuántos pedidos ha efectuado un determinado empleado/a.

select 
p.pedido_id,
e.empleado_id,
e.empleado_nombre,
e.empleado_apellido
from pedido p
join empleado e
on p.empleado_empleado_id = e.empleado_id
where e.empleado_id = 1;

