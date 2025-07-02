insert into videojuegos (codigo, nombre, descripcion, valoracion) values
(1, 'Call of Duty', 'Guerra', 9),
(2, 'Assassins Creed Valhalla', 'Aventura épica ', 8),
(3, 'Cyberpunk 2077', 'RPG futurista ', 7),
(4, 'Dark Souls III', 'Juego de acción RPG ', 9),
(5, 'God of War', 'Una épica aventura mitológica', 9),
(6, 'Red Dead Redemption II', 'Narrativa profunda', 9),
(7, 'The Legend of Zelda', 'Exploración y aventura en Hyrule.', 6),
(8, 'Warcraft III', 'Remasterizado ', 8),
(9, 'Civilization VI', 'Juego de estrategia', 8),
(10, 'Doom Eternal', 'Disparos frenéticos ', 6)

insert into plataformas (nombre_plataforma, codigo_videojuego) values
('PlayStation 5', 1),
('Xbox Series X', 2),
('PC', 3),
('Nintendo Switch', 4),
('PlayStation 4', 5),
('Xbox One', 6),
('Switch', 7),
('PC', 8),
('PC', 9),
('Xbox Series S', 10),
('PlayStation 4', 1),
('Nintendo Switch', 2),
('PC', 3),
('Xbox One', 4),
('PlayStation 5', 5),
('PC', 6),
('Switch', 7),
('PlayStation 4', 8),
('Xbox Series X', 9),
('PC', 10)

--Consulta
select v.nombre, v.descripcion, v.valoracion,  p.nombre_plataforma
from
    videojuegos v,
    plataformas p 
	where
	v.codigo = p.codigo_videojuego
and
    (v.descripcion like '%Guerra%' and v.valoracion > 7)
	or (v.nombre like 'C%)' and v.valoracion > 8)
	 or (v.nombre LIKE 'D%' AND v.valoracion > 8)
	 --Subconsulta
select * from plataformas
where codigo_videojuego = (select codigo from videojuegos where nombre = 'God of War')