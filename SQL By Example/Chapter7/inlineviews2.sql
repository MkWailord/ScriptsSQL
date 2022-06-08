SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter7\salidas\inlineviews2.txt
rem Chapter 7. Subqueries 
rem [Rischert,2004,401]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

SELECT COUNT(*) num_enrolled 
		FROM enrollment e, section s 
		WHERE s.course_no = 20 
		AND s.section_id = e.section_id;
		
SELECT SUM(capacity) capacity 
		FROM section 
		WHERE course_no = 20;

SELECT enr.num_enrolled "Enrollments", 
 enr.num_enrolled * c.cost "Actual Revenue", 
 cap.capacity "Total Capacity", 
 cap.capacity * c.cost "Potential Revenue" 
 FROM (SELECT COUNT(*) num_enrolled 
		FROM enrollment e, section s 
		WHERE s.course_no = 20 
		AND s.section_id = e.section_id) enr, 
		(SELECT SUM(capacity) capacity 
		FROM section 
		WHERE course_no = 20) cap, 
		course c 
 WHERE c.course_no = 20;


 SPOOL OFF