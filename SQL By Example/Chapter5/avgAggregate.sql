SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter5\salidas\avgAggregate.txt
rem Chapter 5. Aggregate Functions, 
rem	GROUP BY, and HAVING 
rem [Rischert,2004,305]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

SELECT AVG(CASE WHEN prerequisite IS NOT NULL THEN cost*1.1 
 WHEN prerequisite = 20 THEN cost*1.2 
 ELSE cost 
 END) AS avg 
 FROM course;


 SPOOL OFF