SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter3\salidas\subcadenas.txt
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

rem devuelve first_name, subcadena first_name
column MI format a30
column first format a30
SELECT first_name,
   SUBSTR(first_name, INSTR(first_name, '.')-1) mi,
   SUBSTR(first_name, 1, INSTR(first_name, '.')-2) first
   FROM student
   WHERE INSTR(first_name, '.') >= 3;
   
SPOOL OFF