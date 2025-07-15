--  1. Mostrar todos los usuarios de tipo Cliente, Seleccionar nombre de usuario, correo y tipo_usuario
SELECT u.username, u.email, u.id_tipo_usuario
FROM usuarios u
JOIN tipo_usuarios tu ON u.id_tipo_usuario = tu.id_tipo
WHERE tu.nombre_tipo = 'Cliente';

-- 2. Mostrar Personas nacidas despues del año 1990, Seleccionar Nombre, fecha de nacimiento y username.
SELECT p.nombre_completo, p.fecha_nac, u.username
FROM personas p
JOIN usuarios u ON p.id_usuario = u.id_usuario
WHERE p.fecha_nac > '1990-12-31';

-- 3. Seleccionar nombres de personas que comiencen con la letra A, Seleccionar nombre y correo la persona.
SELECT p.nombre_completo, u.email
FROM personas p
JOIN usuarios u ON p.id_usuario = u.id_usuario
WHERE p.nombre_completo LIKE 'A%';

-- 4. Mostrar usuarios cuyos dominios de correo sean mail.commit LIKE '%mail.com%'
SELECT u.username, u.email
FROM usuarios u
JOIN tipo_usuarios tu ON u.id_tipo_usuario = tu.id_tipo -- No obligatorio, pero usado para forzar JOIN
WHERE u.email LIKE '%mail.com%';

-- 5. Mostrar todas las personas que no viven en Valparaiso y su usuario + ciudad. select * from ciudad; ID 2 VALPARAISO
SELECT p.nombre_completo, u.username, c.nombre_ciudad
FROM personas p
JOIN usuarios u ON p.id_usuario = u.id_usuario
JOIN ciudad c ON p.id_ciudad = c.id_ciudad
WHERE c.id_ciudad != 2;

-- 6.- Mostrar usuarios que contengan más de 7 carácteres de longitud.
SELECT u.username
FROM usuarios u
JOIN tipo_usuarios tu ON u.id_tipo_usuario = tu.id_tipo 
WHERE LENGTH(u.username) > 7;

-- 7.- Mostrar username de personas nacidas entre 1990 y 1995
SELECT u.username
FROM personas p
JOIN usuarios u ON p.id_usuario = u.id_usuario
WHERE p.fecha_nac BETWEEN '1990-01-01' AND '1995-12-31';
