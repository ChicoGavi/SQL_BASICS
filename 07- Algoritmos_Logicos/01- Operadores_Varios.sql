--- count, CONTAR la cantidad de  ---
SELECT 
    (COUNT(CITY) - COUNT(DISTINCT CITY)) AS difference
FROM 
    STATION;



--- HALLAR NUMEROS PARES ---
SELECT * FROM CITY WHERE AGE % 2 = 0


-- HALLAR EL TAMAÑO  CON LENGTH ---
SELECT CITY, LENGTH(CITY) AS length
FROM STATION
ORDER BY LENGTH(CITY), CITY
LIMIT 1;

Consulta la población media de todas las ciudades de CIUDAD, redondeada al entero inferior más próximo.

SELECT FLOOR(AVG(POPULATION)) FROM CITY 



