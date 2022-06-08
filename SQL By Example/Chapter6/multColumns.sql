SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter6\salidas\multColumns.txt
rem Chapter 6. Equijoins 
rem [Rischert,2004,351]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';


SELECT student_id, section_id, 
 grade_type_code type, 
 grade_code_occurrence no, 
 numeric_grade indiv_gr, 
 TO_CHAR(enroll_date, 'MM/DD/YY') enrolldt 
 FROM grade JOIN enrollment 
 USING (student_id, section_id) 
 WHERE student_id = 220 
 AND section_id = 119;

 SPOOL OFF