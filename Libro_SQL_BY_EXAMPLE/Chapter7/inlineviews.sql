SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter7\salidas\inlineviews.txt
rem Chapter 7. Subqueries 
rem [Rischert,2004,400]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

SELECT student_id, section_id, enroll_date 
 FROM enrollment 
 WHERE student_id = 123;
 
 SELECT student_id, last_name FROM student WHERE student_id = 123;

SELECT e.student_id, e.section_id, s.last_name 
 FROM (SELECT student_id, section_id, enroll_date 
		FROM enrollment 
		WHERE student_id = 123) e, 
		student s 
 WHERE e.student_id = s.student_id ;




 SPOOL OFF