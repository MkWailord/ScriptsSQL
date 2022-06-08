SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter5\salidas\minmax.txt
rem Chapter 5. Aggregate Functions, 
rem	GROUP BY, and HAVING 
rem [Rischert,2004,304]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

SELECT MIN(capacity), MAX(capacity) 
 FROM section ;
 
 SELECT MIN(registration_date) "First", MAX(registration_date) "Last" 
 FROM student ;
 
 SELECT MIN (description) AS MIN, MAX (description) AS MAX 
 FROM course;


 SPOOL OFF