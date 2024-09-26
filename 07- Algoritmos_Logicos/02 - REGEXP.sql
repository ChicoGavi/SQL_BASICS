--- REGEXP en SQL se utiliza para realizar coincidencias de patrones utilizando expresiones regulares.
--- Permite verificar si un texto coincide con un patrón específico- --
--- Sintaxis: column_name REGEXP 'pattern' ---

--- ^: Este símbolo indica el inicio de la cadena. 
--- Los corchetes ([]) se utilizan para definir un conjunto de caracteres ---
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[AEIOUaeiou]';

--- El símbolo $ indica que el patrón debe coincidir al final de la cadena. ---

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[aeiou]$';


--- Coincide al principio y al final de la cadena con las vocales ---
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$';

--- NO Coincide al principio y al final de la cadena con las vocales ---
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT REGEXP '^[AEIOUaeiou]' AND CITY NOT REGEXP'[AEIOUaeiou]$'

--- No empiece por vocales NOT --- 

SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT REGEXP '^[AEIOUaeiou]'