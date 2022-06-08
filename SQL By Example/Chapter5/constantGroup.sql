SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter5\salidas\constantGroup.txt
rem Chapter 5. Aggregate Functions, 
rem	GROUP BY, and HAVING 
rem [Rischert,2004,317]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

SELECT 'Hello', 1, SYSDATE, course_no "Course #", 
 COUNT(*) 
 FROM section 
 GROUP BY course_no 
HAVING COUNT(*) = 5;


 SPOOL OFF