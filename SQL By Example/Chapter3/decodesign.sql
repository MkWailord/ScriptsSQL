SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter3\salidas\decodesign.txt
rem   Chapter 3.  Character, Number, 
rem    and Miscellaneous Functions
rem [Rischert,2004,205]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

rem sign devuelve el signo de la operación (-1, +1, 0 o null)
rem esta consulta si el costo es menor a 1195, muestra el costo
rem como 500, de lo contrario, muestra el costo
SELECT course_no, cost, 
 DECODE(SIGN(cost-1195),-1, 500, cost) newcost 
 FROM course 
 WHERE course_no IN (80, 20, 135, 450) 
 ORDER BY 2;
 
 SPOOL OFF