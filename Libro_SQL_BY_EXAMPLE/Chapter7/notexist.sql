SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter7\salidas\notexist.txt
rem Chapter 7. Subqueries 
rem [Rischert,2004,387]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

rem muestra los instructores no asignados a alguna sección 
SELECT instructor_id, last_name, first_name, zip 
 FROM instructor i 
 WHERE NOT EXISTS 
 (SELECT 'X' 
 FROM section 
 WHERE i.instructor_id = instructor_id)


 SPOOL OFF