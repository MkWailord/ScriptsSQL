SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter7\salidas\nulosYSubqueries.txt
rem Chapter 7. Subqueries 
rem [Rischert,2004,373]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

SELECT course_no, prerequisite 
 FROM course 
 WHERE course_no IN (120, 220, 310);
	 
SELECT course_no, prerequisite 
 FROM course 
 WHERE prerequisite NOT IN
	 (SELECT prerequisite 
	 FROM course 
	 WHERE course_no IN (310, 220));
	 
SELECT course_no, prerequisite 
 FROM course 
 WHERE prerequisite NOT IN (80, NULL);
 
 rem el operador NOT IN puede devolver valores nulos
 rem aun cuando si haya registros.
 rem Se resuelve usando NOT EXISTS
 
 SELECT course_no, prerequisite 
 FROM course c 
 WHERE NOT EXISTS 
	 (SELECT '*' 
	 FROM course 
	 WHERE course_no IN (310, 220) 
	  AND c.prerequisite = prerequisite) ;


 SPOOL OFF