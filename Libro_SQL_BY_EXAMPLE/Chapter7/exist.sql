SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter7\salidas\exist.txt
rem Chapter 7. Subqueries 
rem [Rischert,2004,386]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

rem la subocnsulta debe regresar al menos 1 fila
rem la columna en el select es irrelevante ya que solo
rem se revisa que exista al menos 1  fila
SELECT instructor_id, last_name, first_name, zip 
 FROM instructor i 
 WHERE EXISTS 
 (SELECT 'X' 
 FROM section 
 WHERE i.instructor_id = instructor_id); 

SELECT instructor_id, last_name, first_name, zip 
 FROM instructor 
 WHERE instructor_id IN 
 (SELECT instructor_id 
 FROM section);
 
 SELECT DISTINCT i.instructor_id, i.last_name, 
 i.first_name, i.zip 
 FROM instructor i JOIN section s 
 ON i.instructor_id = s.instructor_id ;

 SPOOL OFF