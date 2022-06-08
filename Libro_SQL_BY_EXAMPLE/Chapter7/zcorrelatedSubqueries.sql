SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter7\salidas\zcorrelatedSubqueries.txt
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

SELECT student_id, section_id, numeric_grade 
 FROM grade 
 WHERE grade_type_code = 'PJ' 
 AND (section_id, numeric_grade) IN 
	 (SELECT section_id, MAX(numeric_grade) 
	 FROM grade 
	 WHERE grade_type_code = 'PJ' 
	 GROUP BY section_id) ;
	 
rem misma consulta usando correlated subqueries
SELECT student_id, section_id, numeric_grade 
 FROM grade outer 
 WHERE grade_type_code = 'PJ' 
 AND numeric_grade = 
	 (SELECT MAX(numeric_grade) 
	 FROM grade 
	 WHERE grade_type_code = outer.grade_type_code 
	 AND section_id = outer.section_id);



 SPOOL OFF