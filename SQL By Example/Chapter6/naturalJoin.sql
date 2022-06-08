SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter6\salidas\naturalJoin.txt
rem Chapter 6. Equijoins 
rem [Rischert,2004,333]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

SELECT course_no, s.section_no, c.description, 
 s.location, s.instructor_id 
 FROM course c NATURAL JOIN section s;


 SPOOL OFF