SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter3\salidas\casewhen.txt
rem   Chapter 3.  Character, Number, 
rem    and Miscellaneous Functions
rem [Rischert,2004,206]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

rem CASE WHEN THEN y ELSE
SELECT course_no, cost, 
 CASE WHEN cost <1195 THEN 500 
 ELSE cost 
 END "Test CASE" 
 FROM course 
 WHERE course_no IN (80, 20, 135, 450) 
 ORDER BY 2;
 
 SPOOL OFF