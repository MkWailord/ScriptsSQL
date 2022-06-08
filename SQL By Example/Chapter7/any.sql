SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter7\salidas\any.txt
rem Chapter 7. Subqueries 
rem [Rischert,2004,414]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

SELECT section_id, numeric_grade 
 FROM grade 
 WHERE section_id = 84 
 AND numeric_grade < ANY (80, 90);
 
 SELECT section_id, numeric_grade 
 FROM grade 
 WHERE section_id = 84 
 AND numeric_grade > ANY (80, 90) ;
 
 SELECT section_id, numeric_grade 
 FROM grade 
 WHERE section_id = 84 
 AND numeric_grade = ANY (80, 90) ;
 
 SELECT section_id, numeric_grade 
 FROM grade 
 WHERE section_id = 84 
 AND numeric_grade IN (80, 90);



 SPOOL OFF