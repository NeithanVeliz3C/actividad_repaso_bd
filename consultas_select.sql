-- Selecciona usuarios cuyo tipo sea 'Cliente' (id_tipo_usuario = 2)
SELECT username, email, id_tipo_usuario -- Muestra el nombre de usuario, correo y tipo
FROM usuarios -- Desde la tabla 'usuarios'
WHERE id_tipo_usuario = 2; -- Filtra por tipo de usuario = Cliente

-- Muestra personas nacidas después del 31 de diciembre de 1990
SELECT p.nombre_completo, p.fecha_nac, u.username -- selecciona el nombre completo, fecha de nacimiento y nombre de usuario desde la tabla personas
FROM personas p JOIN usuarios u ON p.id_usuario = u.id_usuario -- Une con la tabla 'usuarios' según ID
WHERE p.fecha_nac > '1990-12-31'; -- Filtra personas nacidas después de 1990


-- Muestra personas cuyo nombre completo comienza con la letra 'A'
SELECT p.nombre_completo, u.email  -- selecciona el nombre completo y correo electrónico del usuario desde la tabla de personas
FROM personas p JOIN usuarios u ON p.id_usuario = u.id_usuario -- Une con 'usuarios' por ID
WHERE p.nombre_completo LIKE 'A%'; -- Filtra nombres que empiezan con 'A'

-- Selecciona usuarios cuyo correo contiene 'mail.com'
SELECT username, email -- selecciona nombre de usuario y correo electrónico desde la tabla usuarios
FROM usuarios 
WHERE email LIKE '%mail.com%'; -- muestra los correos que contengan 'mail.com'


-- Muestra personas que no están asociadas a la ciudad con ID 2 (Valparaíso)
SELECT p.nombre_completo, u.username, c.nombre_ciudad  -- selecciona nombre completo, nombre de usuario y ciudad desde la tabla personas
FROM personas p JOIN usuarios u ON p.id_usuario = u.id_usuario -- Relación con usuarios
JOIN ciudad c ON p.id_ciudad = c.id_ciudad   -- Relación con ciudad
WHERE p.id_ciudad != 2; -- Excluye a los que viven en Valparaíso


-- Muestra los resultados donde longitud del nombre de usuario sea mayor a 7 caracteres
SELECT username  -- Selecciona el nombre de usuario desde la tabla usuarios
FROM usuarios
WHERE LENGTH(username) > 7;  -- Filtra usuarios con nombres de más de 7 caracteres

-- Muestra a los usuarios nacidos entre 1990 y 1995
SELECT u.username  -- Selecciona el nombre de usuario desde la tabla usuarios
FROM personas p 
JOIN usuarios u ON p.id_usuario = u.id_usuario  -- Relación entre personas y usuarios por id_usuario
WHERE p.fecha_nac BETWEEN '1990-01-01' AND '1995-12-31';  -- Filtra personas nacidas entre 1990 y 1995