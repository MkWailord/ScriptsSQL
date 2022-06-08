SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter7\salidas\scalarSubqueries.txt
rem Chapter 7. Subqueries 
rem [Rischert,2004,368]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';


SELECT MIN(cost) 
 FROM course ;


SELECT course_no, description, cost 
 FROM course 
 WHERE cost = 1095 ;
 
 SELECT course_no, description, cost 
 FROM course 
 WHERE cost = 
 (SELECT MIN(cost) 
 FROM course) ;

 SPOOL OFF