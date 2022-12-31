use n2_ex1_youtube;

insert into usuario values
('1', 'usuario1@mail.com', 'usuario1_pass', 'usuario1_nombre','1990-01-01','m', 'espana','080000'),
('2', 'usuario2@mail.com', 'usuario2_pass', 'usuario2_nombre','1990-02-01','m', 'francia','080000'),
('3', 'usuario3@mail.com', 'usuario3_pass', 'usuario3_nombre','1990-03-01','m', 'portugal','080000'),
('4', 'usuario4@mail.com', 'usuario4_pass', 'usuario4_nombre','1990-04-01','m', 'united kingdom','080000'),
('5', 'usuario5@mail.com', 'usuario5_pass', 'usuario5_nombre','1990-05-01','m', 'Belgium','080000'),
('6', 'usuario6@mail.com', 'usuario6_pass', 'usuario6_nombre','1990-06-01','m', 'Norway','080000');

insert into canal values
('1', 'canal_1', 'canal1_descripcion', '2022-01-01', '1'),
('2', 'canal_2', 'canal2_descripcion', '2022-02-01', '2'),
('3', 'canal_3', 'canal3_descripcion', '2022-03-01', '3'),
('4', 'canal_4', 'canal4_descripcion', '2022-04-01', '4');

insert into suscripciones values
('1', '1','2'),
('2', '1','3'),
('3', '1','4'),
('4', '6','1'),
('5', '6','2');

insert into video values
('1', 'video_1', 'video_descripcion_1', '1 Mb', 'video_1.mpg', '01:01:01', 'video1.jpg', '1', '1','1', 'publico', '1'),
('2', 'video_2', 'video_descripcion_2', '1 Mb', 'video_1.mpg', '01:01:01', 'video1.jpg', '2', '2','1', 'privado', '1'),
('3', 'video_3', 'video_descripcion_3', '1 Mb', 'video_1.mpg', '01:01:01', 'video1.jpg', '3', '3','1', 'privado', '1'),
('4', 'video_4', 'video_descripcion_4', '1 Mb', 'video_1.mpg', '01:01:01', 'video1.jpg', '1', '1','1', 'publico', '2'),
('5', 'video_5', 'video_descripcion_5', '1 Mb', 'video_1.mpg', '01:01:01', 'video1.jpg', '2', '1','1', 'publico', '3'),
('6', 'video_6', 'video_descripcion_6', '1 Mb', 'video_1.mpg', '01:01:01', 'video1.jpg', '3', '1','1', 'publico', '1'),
('7', 'video_7', 'video_descripcion_7', '1 Mb', 'video_1.mpg', '01:01:01', 'video1.jpg', '1', '1','1', 'publico', '2'),
('8', 'video_8', 'video_descripcion_8', '1 Mb', 'video_1.mpg', '01:01:01', 'video1.jpg', '1', '1','1', 'publico', '1'),
('9', 'video_9', 'video_descripcion_9', '1 Mb', 'video_1.mpg', '01:01:01', 'video1.jpg', '1', '1','1', 'publico', '2'),
('10', 'video_11', 'video_descripcion_10', '1 Mb', 'video_1.mpg', '01:01:01', 'video1.jpg', '1', '1','1', 'publico', '3'),
('11', 'video_11', 'video_descripcion_11', '1 Mb', 'video_1.mpg', '01:01:01', 'video1.jpg', '1', '1','1', 'publico', '1');

insert into video_has_usuario values
('1', '1', '1', '2022-01-01 01:01:01'),
('2', '2', '1', '2022-01-01 01:01:01'),
('3', '3', '2', '2022-01-01 01:01:01'),
('4', '4', '2', '2022-01-01 01:01:01'),
('5', '5', '2', '2022-01-01 01:01:01'),
('6', '6', '3', '2022-01-01 01:01:01'),
('7', '7', '3', '2022-01-01 01:01:01'),
('8', '8', '3', '2022-01-01 01:01:01'),
('9', '9', '4', '2022-01-01 01:01:01'),
('10', '10', '4', '2022-01-01 01:01:01'),
('11', '11', '4', '2022-01-01 01:01:01');

insert into comentarios values
('1', '2022-01-01 01:01:01', 'excelente video', '5', '1'),
('2', '2022-01-01 01:01:01', 'pesimo video', '1', '2'),
('3', '2022-01-01 01:01:01', 'pesimo video', '5', '2'),
('4', '2022-01-01 01:01:01', 'pesimo video', '1', '2');

insert into playlist values
('1', 'playlist_1', '2022-01-01','publica','1', '6'),
('2', 'playlist_1', '2022-01-01','publica','2', '6'),
('3', 'playlist_1', '2022-01-01','publica','3', '6'),
('4', 'playlist_2', '2022-01-01','privada','1', '2');

insert into dislikes values
('1', '2022-02-02','1','10'),
('2', '2022-02-02','1','11'),
('3', '2022-02-02','2', '3'),
('4', '2022-02-02','2', '4');

insert into etiqueta values
('1', 'etiqueta video 1', '1'),
('2', 'etiqueta video 2', '2'),
('3', 'etiqueta video 3', '3'),
('4', 'etiqueta video 4', '4');
