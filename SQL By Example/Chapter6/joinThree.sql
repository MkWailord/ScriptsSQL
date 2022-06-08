SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter6\salidas\joinThree.txt
rem Chapter 6. Equijoins 
rem [Rischert,2004,348]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
column location format a15;
column last_name format a15;
alter session set nls_date_language = 'ENGLISH';


SELECT c.course_no, s.section_no, c.description, s.location, 
 s.instructor_id, i.last_name, i.first_name
 FROM course c JOIN section s 
 ON (c.course_no = s.course_no) 
 JOIN instructor i
 ON (s.instructor_id = i.instructor_id);

 SPOOL OFF