SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter6\salidas\innerUsing.txt
rem Chapter 6. Equijoins 
rem [Rischert,2004,332]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
COLUMN location format a30;
column description format a30;
alter session set nls_date_language = 'ENGLISH';

rem inner une basado en igualdad de registros
SELECT course_no, s.section_no, c.description, 
 s.location, s.instructor_id 
 FROM course c JOIN section s 
USING (course_no);

SELECT course_no, s.section_no, c.description, 
 s.location, s.instructor_id 
 FROM course c INNER JOIN section s 
 USING (course_no);

 SPOOL OFF