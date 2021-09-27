CREATE SCHEMA dbyoutuber;
USE dbyoutuber;
-- Primer tabla
CREATE TABLE tblcontenidos(
	cont_id INT PRIMARY KEY,
    cont_titulo CHAR(80)
);
INSERT INTO tblcontenidos(cont_id, cont_titulo) VALUES(1, "Los Vengadores");
INSERT INTO tblcontenidos(cont_id, cont_titulo) VALUES(2, "Interestelar");
INSERT INTO tblcontenidos(cont_id, cont_titulo) VALUES(3, "El viaje de Chihiro");
INSERT INTO tblcontenidos(cont_id, cont_titulo) VALUES(4, "Parasitos");
INSERT INTO tblcontenidos(cont_id, cont_titulo) VALUES(5, "Mas alla de los sueños");
INSERT INTO tblcontenidos(cont_id, cont_titulo) VALUES(6, "The walking dead");
INSERT INTO tblcontenidos(cont_id, cont_titulo) VALUES(7, "Viaje a las estrellas: la serie original");
INSERT INTO tblcontenidos(cont_id, cont_titulo) VALUES(8, "Glow");
INSERT INTO tblcontenidos(cont_id, cont_titulo) VALUES(9, "La casa de papel");
INSERT INTO tblcontenidos(cont_id, cont_titulo) VALUES(10, "Friends");
INSERT INTO tblcontenidos(cont_id, cont_titulo) VALUES(11, "Arrow");
INSERT INTO tblcontenidos(cont_id, cont_titulo) VALUES(12, "The big bang theory");
INSERT INTO tblcontenidos(cont_id, cont_titulo) VALUES(13, "Vikingos");
-- Segunda tabla
CREATE TABLE tbldirectores(
	dir_id INT PRIMARY KEY,
	dir_nombre CHAR(20),
    dir_apellido CHAR(20),
    dir_nacionalidad CHAR(40)
);
INSERT INTO tbldirectores(dir_id, dir_nombre, dir_apellido, dir_nacionalidad) VALUES(101, "Hayo","Miyazaki", "japones");
INSERT INTO tbldirectores(dir_id, dir_nombre, dir_apellido, dir_nacionalidad) VALUES(102, "Joss", "Whedon", "estadounidense");
INSERT INTO tbldirectores(dir_id, dir_nombre, dir_apellido, dir_nacionalidad) VALUES(103, "Christopher", "Nolan", "estadounidense");
INSERT INTO tbldirectores(dir_id, dir_nombre, dir_apellido, dir_nacionalidad) VALUES(104, "Bong", "Joon-ho", "coreano");
INSERT INTO tbldirectores(dir_id, dir_nombre, dir_apellido, dir_nacionalidad) VALUES(105, "Vincent", "Ward", "neozelandes");
-- Tercera tabla
CREATE TABLE tblusuarios(
	username CHAR(20) PRIMARY KEY,
    user_nombre CHAR(20),
    user_apellido CHAR(20),
    user_email CHAR(30),
    user_celular BIGINT,
    user_clave CHAR(20),
    user_fecha_nto DATE
);
INSERT INTO tblusuarios(username, user_nombre, user_apellido, user_email, user_celular, user_clave, user_fecha_nto) VALUES("lucky", "Pedro", "Perez", "test@gmail.com", 1234567890, "pass123", "2000-07-07");
INSERT INTO tblusuarios(username, user_nombre, user_apellido, user_email, user_celular, user_clave, user_fecha_nto) VALUES("malopez", "Maria", "Lopez", "test@gmail.com", 1234567890, "pass123", "1998-08-08");
INSERT INTO tblusuarios(username, user_nombre, user_apellido, user_email, user_celular, user_clave, user_fecha_nto) VALUES("diva", "Ana", "Diaz", "test@gmail.com", 1234567890, "pass123","2005-09-09");
INSERT INTO tblusuarios(username, user_nombre, user_apellido, user_email, user_celular, user_clave, user_fecha_nto) VALUES("dreamer", "Luis", "Rojas", "test@gmail.com", 1234567890, "pass123","1987-10-10");
INSERT INTO tblusuarios(username, user_nombre, user_apellido, user_email, user_celular, user_clave, user_fecha_nto) VALUES("ninja", "Andres", "Cruz", "test@gmail.com", 1234567890, "pass123","1995-05-09");
INSERT INTO tblusuarios(username, user_nombre, user_apellido, user_email, user_celular, user_clave, user_fecha_nto) VALUES("neon", "Nelson", "Ruiz", "test@gmail.com", 1234567890, "pass123","1995-05-09");
INSERT INTO tblusuarios(username, user_nombre, user_apellido, user_email, user_celular, user_clave, user_fecha_nto) VALUES("rose", "Claudia", "Mendez", "test@gmail.com", 1234567890, "pass123","1995-05-09");
INSERT INTO tblusuarios(username, user_nombre, user_apellido, user_email, user_celular, user_clave, user_fecha_nto) VALUES("green", "Jorge", "Rodriguez", "test@gmail.com", 1234567890, "pass123","2004-03-03");
-- Cuarta tabla
CREATE TABLE tblpodcast(
	pod_id_fk INT,
    pod_epi INT,
    pod_tem INT,
	FOREIGN KEY(pod_id_fk) REFERENCES tblcontenidos(cont_id)
);
INSERT INTO tblpodcast(pod_id_fk, pod_epi, pod_tem) VALUES(6,153,11);
INSERT INTO tblpodcast(pod_id_fk, pod_epi, pod_tem) VALUES(7,80,3);
INSERT INTO tblpodcast(pod_id_fk, pod_epi, pod_tem) VALUES(8,30,3);
INSERT INTO tblpodcast(pod_id_fk, pod_epi, pod_tem) VALUES(9,31,4);
INSERT INTO tblpodcast(pod_id_fk, pod_epi, pod_tem) VALUES(10,236,10);
INSERT INTO tblpodcast(pod_id_fk, pod_epi, pod_tem) VALUES(11,170,8);
INSERT INTO tblpodcast(pod_id_fk, pod_epi, pod_tem) VALUES(12,279,12);
INSERT INTO tblpodcast(pod_id_fk, pod_epi, pod_tem) VALUES(13,79,6);
-- Quinta tabla
CREATE TABLE tblvideos(
	vid_id_fk INT,
    vid_titulo CHAR(20),
    vid_resumen CHAR(255),
    vid_ano INT,
    vid_director_fk INT,
    FOREIGN KEY(vid_id_fk) REFERENCES tblcontenidos(cont_id),
    FOREIGN KEY(vid_director_fk) REFERENCES tbldirectores(dir_id)
);
INSERT INTO tblvideos(vid_id_fk, vid_titulo, vid_resumen, vid_ano, vid_director_fk)VALUES(1, "Los Vengadores", "Video de superheroes basada en Marvel Comics. Nick Fury director de SHIELD recluta a Tony Stark, Steve Rogers, Bruce Banner y Thor para forma un equipo y evitar que Loki, hermano de Thor, se apodere de la tierra", 1990, 102);
INSERT INTO tblvideos(vid_id_fk, vid_titulo, vid_resumen, vid_ano, vid_director_fk)VALUES(2, "Interestelar", "Video de ciencia fición, donde la humanidad lucha por sobrevivir. La pelicula cuenta una historia de un grupo de astronautas que viajana traves de un agujero de gusano en busca de un nuevo hogar. ", 2014, 103);
INSERT INTO tblvideos(vid_id_fk, vid_titulo, vid_resumen, vid_ano, vid_director_fk)VALUES(3, "El viaje de Chihiro", "Video de animación japonesa. Es la historia de una niña de 12 años, quien se ve atrapada por un mundo mágico y sobrenatural, teniendo como misión buscar su libertad y la de sus padres y regresar al mundo real.", 2001, 101);
INSERT INTO tblvideos(vid_id_fk, vid_titulo, vid_resumen, vid_ano, vid_director_fk)VALUES(4, "Parasitos", "Video de drama, suspenso y humor negro. Toca temas como las diferencias sociales y vulnerabilidad del espiritu humano", 2019, 104);
INSERT INTO tblvideos(vid_id_fk, vid_titulo, vid_resumen, vid_ano, vid_director_fk)VALUES(5, "Mas alla de los sueños", "Libro de drama, narra una historia trágica de una familia, donde el padre va en busca de sus esposa al mas allá para recuperarla.", 1998, 105);
-- Sexta tabla
CREATE TABLE tblpublicaciones(
	pub_id INT,
    username_fk CHAR(40),
    cont_id_fk INT,
    fe_ho_pub DATETIME,
	FOREIGN KEY(username_fk) REFERENCES tblusuarios(username),
    FOREIGN KEY(cont_id_fk) REFERENCES tblcontenidos(cont_id)
);
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(1, "lucky", 1, "2017-10-25 20:00:00");
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(2, "lucky", 4, "2019-03-15 18:30:00");
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(3, "lucky", 9, "2019-05-20 20:30:00");
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(4, "malopez", 1, "2018-05-20 20:30:00");
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(5, "malopez", 9, "2020-01-20 20:30:00");
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(6, "diva", 2, "2019-05-20 20:30:00");
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(7, "diva", 3, "2018-06-22 21:30:00");
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(8, "diva", 6, "2020-03-17 15:30:20");
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(9, "dreamer", 6,"2020-03-17 15:30:20");
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(10, "dreamer", 7, "2020-04-10 18:30:20");
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(11, "ninja", 8, "2020-02-17 20:30:20");
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(12, "ninja", 9, "2020-02-20 16:30:20");
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(13, "ninja", 11, "2020-03-27 18:30:20");
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(14, "rose", 10, "2020-03-20 21:30:20");
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(15, "green", 2, "2020-01-10 17:30:20");
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(16, "green", 4, "2020-02-15 20:30:20");
INSERT INTO tblpublicaciones(pub_id, username_fk, cont_id_fk, fe_ho_pub) VALUES(17, "green", 5, "2020-03-17 18:30:20");
-- Modificaciones
UPDATE tblvideos SET vid_ano=2012 WHERE vid_id_fk = 1;
UPDATE tblusuarios SET user_celular = 3115678432 WHERE username LIKE "%ninja%";
DELETE FROM tblpublicaciones WHERE username_fk LIKE "%green%" AND cont_id_fk = 4;
-- Consultas
SELECT "Consulta 1";
SELECT cont_titulo FROM tblcontenidos ORDER BY cont_titulo ASC;
SELECT "Consulta 2";
SELECT vid_titulo, vid_resumen, vid_ano FROM tblvideos WHERE vid_ano >= 2000 ORDER BY vid_titulo ASC;
SELECT "Consulta 3";
SELECT tblcontenidos.cont_titulo AS "titulo" FROM tblvideos JOIN tblcontenidos ON tblvideos.vid_id_fk = tblcontenidos.cont_id JOIN tbldirectores ON tbldirectores.dir_id = vid_director_fk WHERE vid_director_fk = 105;
SELECT "Consulta 4";
SELECT cont_titulo AS "titulo" FROM tblcontenidos JOIN tblpublicaciones ON cont_id_fk = cont_id WHERE username_fk LIKE "%lucky%" ORDER BY titulo ASC;
SELECT "Consulta 5";
SELECT tblusuarios.username AS username, tblusuarios.user_nombre AS nombre, tblusuarios.user_apellido AS apellido FROM tblusuarios JOIN tblpublicaciones ON tblpublicaciones.username_fk = tblusuarios.username WHERE tblpublicaciones.cont_id_fk = 2 ORDER BY username ASC;
SELECT "Consulta 6";
SELECT COUNT(tblvideos.vid_ano) FROM tblvideos WHERE tblvideos.vid_ano > 2000