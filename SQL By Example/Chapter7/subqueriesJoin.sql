SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter7\salidas\subqueriesJoin.txt
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

rem algunas subqueries que usan el operador IN o = pueden
rem expresarse como equijoin si el subquery no contiene
rem una funcion de agregación (como count, sum, max, min, etc)
SELECT course_no, description 
 FROM course 
 WHERE course_no IN 
 (SELECT course_no 
 FROM section 
 WHERE location = 'L211');
 
 SELECT c.course_no, c.description 
 FROM course c, section s 
 WHERE c.course_no = s.course_no 
 AND s.location = 'L211' ;


 SPOOL OFF