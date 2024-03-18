DROP DATABASE IF EXISTS 4dam;
CREATE database IF NOT EXISTS 4dam;
USE 4dam;
/*COMMENT 'Crear tabla chat'*/
CREATE TABLE IF NOT EXISTS chat(
id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
mensaje VARCHAR(1000) NOT NULL,
fecha DATETIME DEFAULT CURRENT_TIMESTAMP  NOT NULL)
ENGINE = InnoDB;
/*Insertar datos en tabla Chat*/
INSERT INTO chat(nombre,mensaje) VALUES
('Admin','Bienvenido a 4DAM'),
('Admin','se respetuoso con lo que comentas :)');
SELECT * FROM chat;