SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter7\salidas\nesting.txt
rem Chapter 7. Subqueries 
rem [Rischert,2004,370]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

SELECT section_id 
		 FROM section 
		WHERE section_no = 8 
		AND course_no = 20;
		
SELECT student_id 
	 FROM enrollment 
	WHERE section_id IN 
		 (SELECT section_id 
		 FROM section 
		WHERE section_no = 8 
		AND course_no = 20);


rem Consulta que determina los apellidos y nombres de los estudiantes
rem inscritos en la sección numero 8 y curso numero 20
SELECT last_name, first_name 
 FROM student 
 WHERE student_id IN 
	 (SELECT student_id 
	 FROM enrollment 
	WHERE section_id IN 
		 (SELECT section_id 
		 FROM section 
		WHERE section_no = 8 
		AND course_no = 20));

select last_name, first_name
from student
where student_id = 158;

select last_name, first_name
from student
where student_id = 199;

select last_name, first_name
from student
where student_id IN (158,199);

 SPOOL OFF