/*
ORDER BY
Lección 9.3: https://youtu.be/OuJerKzV5T0?t=6592
*/

-- Ordena todos los datos de la tabla "users" por edad (ascendente por defecto)
SELECT * FROM users ORDER BY age;

-- Ordena todos los datos de la tabla "users" por edad de manera ascendente
SELECT * FROM users ORDER BY age ASC;

-- Ordena todos los datos de la tabla "users" por edad de manera descendente
SELECT * FROM users ORDER BY age DESC;

-- Obtiene todos los datos de la tabla "users" con email igual a sara@gmail.com y los ordena por edad de manera descendente
SELECT * FROM users WHERE email='sara@gmail.com' ORDER BY age DESC;

-- Obtiene todos los nombres de la tabla "users" con email igual a sara@gmail.com y los ordena por edad de manera descendente
SELECT name FROM users WHERE email='sara@gmail.com' ORDER BY age DESC;

-- ORDER BY RIGHT(Nombre, 3): ordena los resultados por los tres últimos caracteres del nombre.
--- ID ASC: si hay empates en los tres últimos caracteres, se ordena por el ID en orden ascendente.

SELECT Nombre
FROM ALUMNOS
WHERE Marcas > 75
ORDER BY RIGHT(Nombre, 3), ID ASC;
