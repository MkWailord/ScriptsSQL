SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter5\salidas\multHaving.txt
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

SELECT location "Location", 
 SUM(capacity) "Total Capacity" 
 FROM section 
 WHERE section_no = 3 
 GROUP BY location 
HAVING (COUNT(location) > 3 
 AND location LIKE 'L5%') ;



 SPOOL OFF