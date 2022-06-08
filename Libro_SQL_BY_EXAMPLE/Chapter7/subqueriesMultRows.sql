SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter7\salidas\subqueriesMultRows.txt
rem Chapter 7. Subqueries 
rem [Rischert,2004,366]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

SELECT course_no, description, cost 
 FROM course 
 WHERE cost = 
 (SELECT MAX(cost) 
 FROM course);
 
 SELECT cost 
 FROM course 
 WHERE prerequisite = 20;
 
 rem las subconsultas deben regresar unicamente 1 fila
 SELECT course_no, description, cost 
 FROM course 
 WHERE cost = 
 (SELECT cost 
 FROM course 
 WHERE prerequisite = 20);

rem = se sustituye por IN
SELECT course_no, description, cost 
 FROM course 
 WHERE cost IN
 (SELECT cost 
 FROM course 
 WHERE prerequisite = 20) ;
 
 rem <> se sustituye por NOT IN
 SELECT course_no, description, cost 
 FROM course 
 WHERE cost NOT IN 
 (SELECT cost 
 FROM course 
 WHERE prerequisite = 20) ;

 SPOOL OFF