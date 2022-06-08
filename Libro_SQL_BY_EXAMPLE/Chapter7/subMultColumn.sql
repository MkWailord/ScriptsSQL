SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter7\salidas\subMultColumn.txt
rem Chapter 7. Subqueries 
rem [Rischert,2004,371]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

rem esta consulta devuelve los grados mayores de proyectos en cada sección
SELECT section_id, MAX(numeric_grade) 
 FROM grade 
 WHERE grade_type_code = 'PJ' 
 GROUP BY section_id ;

rem esta consulta devuelve los estudiantes con mayor grado en sus proyectos
SELECT student_id, section_id, numeric_grade 
 FROM grade 
 WHERE grade_type_code = 'PJ' 
 AND (section_id, numeric_grade) IN 
	(SELECT section_id, MAX(numeric_grade) 
	FROM grade 
	WHERE grade_type_code = 'PJ' 
	GROUP BY section_id);

 SPOOL OFF