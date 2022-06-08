SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\salidas\chapter3.txt
SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50


rem   Chapter 3. Character, Number, and Miscellaneous Functions

rem Transforma los datos a minusculas
SELECT state, LOWER(state), LOWER('State') 
 FROM zipcode;
 
rem Transforma los datos a mayusculas
SELECT UPPER(city), state, INITCAP(state) 
 FROM zipcode 
 WHERE zip = '10035';
 
rem Transforma los datos colocando almohadillas
SELECT RPAD(city, 20, '*') "City Name", 
 LPAD(state, 10, '-') "State Name" 
 FROM zipcode;
 
rem Transforma los datos, elimando almohadillas
SELECT LTRIM('0001234500', '0') left, 
 RTRIM('0001234500', '0') right, 
 LTRIM(RTRIM('0001234500', '0'), '0') both 
 FROM dual;

rem Transforma los datos, elimando espacios en blanco 
SELECT TRIM(' 00012345 00 ') AS "Blank Trim" 
FROM dual;

rem Transforma una cadena regresando una subcadena 
rem de acuerdo a los parametros
SELECT last_name, 
 SUBSTR(last_name, 1, 5), 
 SUBSTR(last_name, 6) 
 FROM student;

rem Retorna la posicion donde se encuentre la 
rem primer ocurrencia de la cadena
SELECT description, INSTR(description, 'er') 
 FROM course;

rem Retorna el tamaño de la cadena
SELECT LENGTH('Hello there') 
 FROM dual;

rem Despliega first_name y last_name de student
rem donde el last_name tenga una subcadena "Mo"
rem al inicio
rem una alternativa es WHERE last_name LIKE 'Mo%'
SELECT first_name, last_name 
 FROM student 
 WHERE SUBSTR(last_name, 1, 2) = 'Mo';

rem Despliega first_name y last_name de student
rem donde el fist_name contenga al menos un punto
rem despues ordena el restultado por tamaño de last_name
SELECT first_name, last_name 
 FROM student 
 WHERE INSTR(first_name, '.') > 0 
 ORDER BY LENGTH(last_name);

rem Transforma a mayusculas city y agrega almohadillas
rem a la derercha donde estado = CT
SELECT RPAD(UPPER(city), 20,'.') 
 FROM zipcode 
 WHERE state = 'CT' ;

rem devuelve first_name, subcadena first_name
SELECT first_name, 
 SUBSTR(first_name, INSTR(first_name, '.')-1) mi, 
 SUBSTR(first_name, 1, INSTR(first_name, '.')-2) first 
 FROM student 
 WHERE INSTR(first_name, '.') >= 3;

rem Concatena dos cadenas
SELECT CONCAT(city, state) 
 FROM zipcode;

rem Concatena con || multiples cadenas
SELECT city||state||zip 
 FROM zipcode;

rem Concatena agregando comas entre las cadenas 
SELECT city||', '||state||' '||zip 
 FROM zipcode;
 
rem Reemplaza una cadena por otra cadena
rem si el if no so se encuentra, muestra la cadena original
SELECT REPLACE('My hand is asleep', 'hand', 'foot') 
 FROM dual;
 
rem Devuelve el valor absoluto de un numero
SELECT 'The absolute value of -29 is '||ABS(-29) 
 FROM dual ;
 
rem Round redondea el numero
rem Trunc recorta los decimales sin redondear
rem si no se especifica digitos, redondea o recorta
rem a entero
SELECT 222.34501, 
 ROUND(222.34501, 2), 
 TRUNC(222.34501, 2) 
 FROM dual

rem Mismo resultado pero desde el lado izquierdo
SELECT 222.34501, 
 ROUND(222.34501, -2), 
 TRUNC(222.34501, -2) 
 FROM dual 

rem Floor regresa el entero hacia menor
rem Ceil regresa el entero hacia mayor
SELECT FLOOR(22.5), CEIL(22.5), TRUNC(22.5), ROUND(22.5) 
 FROM dual 

rem Modulo de un numero
SELECT MOD(23, 8) 
 FROM dual 
 
rem Operaciones aritmeticas 
SELECT DISTINCT cost, cost + 10, 
 cost - 10, cost * 10, cost / 10 
 FROM course 

rem Uso de parentesis
SELECT DISTINCT cost + (cost * .10) 
 FROM course

rem sustituye null por un numero
SELECT 60+60+NVL(NULL, 1000) 
 FROM dual
 
rem Sustituye una cadena por otra
rem notese el uso de TO_CHAR para especificar
rem una cadena
SELECT course_no, description, 
 NVL(TO_CHAR(prerequisite), 'Not Applicable') prereq 
 FROM course 
 WHERE course_no IN (20, 100)
 
rem DISTINCT muestra los valores diferentes que existen
rem NVL2 sustituye si no hay nulo o si hay
SELECT DISTINCT cost, 
 NVL2(cost, 'exists', 'none') "NVL2" 
 FROM course

rem Aplica nulo de acuerdo a una condición de igualdad
SELECT student_id, 
 TO_CHAR(created_date, 'DD-MON-YY HH24:MI:SS') "Created", 
 TO_CHAR(modified_date, 'DD-MON-YY HH24:MI:SS') "Modified", 
 NULLIF(created_date, modified_date) "Null if equal" 
 FROM student 
 WHERE student_id IN (150, 340) 

rem Decode cambia el valor de acuerdo a una condicion
rem if, pudiendo tener default o no
SELECT DISTINCT state, 
 DECODE(state, 'NY', 'New York', 
 'NJ', 'New Jersey') no_default, 
 DECODE(state, 'NY', 'New York', 
 'NJ', 'New Jersey', 
 'OTHER') with_default 
 FROM zipcode 
 WHERE state IN ('NY','NJ','CT');

rem se puede usar decode para cambiar nulos
SELECT instructor_id, zip, 
 DECODE(zip, NULL, 'NO zipcode!', zip) "Decode Use" 
 FROM instructor 
 WHERE instructor_id IN (102, 110) 

rem sign devuelve el signo de la operación (-1, +1, 0 o null)
rem esta consulta si el costo es menor a 1195, muestra el costo
rem como 500, de lo contrario, muestra el costo
SELECT course_no, cost, 
 DECODE(SIGN(cost-1195),-1, 500, cost) newcost 
 FROM course 
 WHERE course_no IN (80, 20, 135, 450) 
 ORDER BY 2;

rem CASE WHEN THEN y ELSE
SELECT course_no, cost, 
 CASE WHEN cost <1195 THEN 500 
 ELSE cost 
 END "Test CASE" 
 FROM course 
 WHERE course_no IN (80, 20, 135, 450) 
 ORDER BY 2;
 
rem CASE anidado, cuando el prerequisito es 10 o 50
rem y cuando el costt es menor a 1100, el costo se divide entre 2
rem si eso costo esta entre 1100 y 1500 el costo se multiplica por 1.1
rem si el costo es null, entonces escribe 0
rem si no es ninguno de los anteriores, escribe el costo
SELECT course_no, cost, prerequisite, 
	CASE WHEN cost <1100 THEN 
		CASE WHEN prerequisite IN (10, 50) THEN cost/2
		ELSE cost
		END
	WHEN cost >=1100 AND cost <1500 THEN cost*1.1 
	WHEN cost IS NULL THEN 0 
	ELSE cost 
	END "Test CASE" 
 FROM course 
 WHERE course_no IN (80, 20, 135, 450, 230) 
 ORDER BY 2;

rem Usando case en el where
SELECT DISTINCT capacity, location 
 FROM section 
WHERE capacity*CASE 
	WHEN SUBSTR(location, 1,1)='L' THEN 2 
	WHEN SUBSTR(location, 1,1)='M' THEN 1.5 
	ELSE NULL 
   END > 30;

rem En una expresion CASE, debe haber consistencia
rem en el tipo de datos
SELECT section_id, capacity, 
 CASE WHEN capacity >=15 THEN TO_CHAR(capacity) 
 WHEN capacity < 15 THEN 'Room too small' 
 END AS "Capacity" 
 FROM section 
 WHERE section_id IN (101, 146, 147);

rem CASE simple para igualdades
SELECT course_no, cost, 
	 CASE cost WHEN 1095 THEN cost/2 
	 WHEN 1195 THEN cost*1.1 
	 WHEN 1595 THEN cost 
	 ELSE cost*0.5 
	 END "Simple CASE" 
 FROM course 
 WHERE course_no IN (80, 20, 135, 450) 
 ORDER BY 2;
 SPOOL OFF