SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter3\salidas\subcadena.txt
rem   Chapter 3.  Character, Number, 
rem    and Miscellaneous Functions
rem [Rischert,2004,172]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

rem devuelve el nombre del estudiante
rem cuando el last name empieze con "MO"
SELECT first_name, last_name 
 FROM student 
 WHERE SUBSTR(last_name, 1, 2) = 'Mo';
 
 SPOOL OFF