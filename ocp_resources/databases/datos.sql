-- Crear la base de datos y el usuario
CREATE DATABASE IF NOT EXISTS mi_basededatos;
CREATE USER IF NOT EXISTS 'mi_usuario'@'%' IDENTIFIED BY 'mi_contraseña';
GRANT ALL PRIVILEGES ON mi_basededatos.* TO 'mi_usuario'@'%';

-- Usar la base de datos
USE mi_basededatos;

-- Crear una tabla para almacenar filósofos y citas
CREATE TABLE filosofos_citas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    cita TEXT
);

-- Insertar algunos datos de ejemplo
INSERT INTO filosofos_citas (nombre, cita) VALUES
('Sócrates', 'Sólo sé que no sé nada.'),
('Sócrates', 'El secreto de la felicidad no se encuentra en la búsqueda de más, sino en el desarrollo de la capacidad de disfrutar con menos.'),
('Sócrates', 'Una vida sin examen no merece la pena ser vivida.'),
('Platón', 'El cuerpo humano es la prisión del alma.'),
('Platón', 'La mayor riqueza es vivir una vida virtuosa y justa.'),
('Aristóteles', 'La filosofía es el arte de formular buenas preguntas.'),
('Aristóteles', 'La virtud es el término medio entre dos vicios.'),
('Confucio', 'No hagas a otros lo que no quieres que te hagan a ti.'),
('Confucio', 'Elige un trabajo que te guste y no tendrás que trabajar ni un día de tu vida.'),
('Kant', 'Obras, pero no exijas recompensa.'),
('Kant', 'La voluntad buena brilla aún en la adversidad.'),
('Nietzsche', 'Dios ha muerto.'),
('Nietzsche', 'Lo que no me mata me hace más fuerte.'),
('Nietzsche', 'La vida sin música sería un error.');

