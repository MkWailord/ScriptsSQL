SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter7\salidas\orderBy.txt
rem Chapter 7. Subqueries 
rem [Rischert,2004,374]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

rem no se puede usar order by en las consultar internas
SELECT course_no, description, cost 
 FROM course 
 WHERE cost IN 
	 (SELECT cost 
	 FROM course 
	 WHERE prerequisite = 420 
	 ORDER BY cost) ;

rem se pueden usar en la consulta mas externa.

SELECT course_no, description, cost 
 FROM course 
 WHERE cost IN 
	 (SELECT cost 
	 FROM course 
	 WHERE prerequisite = 420 )
ORDER BY cost;
	 
 SPOOL OFF