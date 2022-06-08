SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter4\salidas\formato1.txt
rem   Chapter 4. Date and Conversion 
rem       Functions
rem [Rischert,2004,224]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

rem Muestra fecha en formato default DD-MON-YY
SELECT last_name, registration_date 
 FROM student 
 WHERE student_id IN (123, 161, 190);
 
rem muestra la fecha en otro formato
SELECT last_name, registration_date, 
 TO_CHAR(registration_date, 'MM/DD/YYYY') 
 AS "Formatted" 
 FROM student 
 WHERE student_id IN (123, 161, 190) ;
 
 SPOOL OFF