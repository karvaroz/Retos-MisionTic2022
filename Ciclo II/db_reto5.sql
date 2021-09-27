CREATE DATABASE dbusuarios;
USE dbusuarios;

CREATE TABLE tblusuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(20),
    nombres VARCHAR(20),
    apellidos VARCHAR(20),
    email VARCHAR(20),
    celular VARCHAR(20)

);

INSERT INTO tblusuarios (username, nombres, apellidos, email, celular) VALUES ("lucky", "Pedro", "Perez", "test@gmail.com", 1234567890);
INSERT INTO tblusuarios (username, nombres, apellidos, email, celular) VALUES ("malopez", "Maria", "Lopez", "test@gmail.com", 1234567890);
INSERT INTO tblusuarios (username, nombres, apellidos, email, celular) VALUES ("diva", "Ana", "Diaz", "test@gmail.com", 1234567890);
INSERT INTO tblusuarios (username, nombres, apellidos, email, celular) VALUES ("dreamer", "Luis", "Rojas", "test@gmail.com", 1234567890);
INSERT INTO tblusuarios (username, nombres, apellidos, email, celular) VALUES ("ninja", "Andres", "Cruz", "test@gmail.com", 1234567890);
INSERT INTO tblusuarios (username, nombres, apellidos, email, celular) VALUES ("neon", "Nelson", "Ruiz", "test@gmail.com", 1234567890);
INSERT INTO tblusuarios (username, nombres, apellidos, email, celular) VALUES ("rose", "Claudia", "Mendez", "test@gmail.com", 1234567890);
INSERT INTO tblusuarios (username, nombres, apellidos, email, celular) VALUES ("green", "Jorge", "Rodriguez", "test@gmail.com", 1234567890);