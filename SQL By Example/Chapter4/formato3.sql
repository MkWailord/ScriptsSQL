SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter4\salidas\formato3.txt
rem   Chapter 4. Date and Conversion 
rem       Functions
rem [Rischert,2004,227]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

rem Elimina espacios y spelled out
SELECT last_name, 
 TO_CHAR(registration_date, 'fmMonth ddth, YYYY') 
 "Eliminating Spaces", 
 TO_CHAR(registration_date, 'Ddspth "of" fmMonth') 
 "Spelled out" 
 FROM student 
 WHERE student_id IN (123, 161, 190);
 
 SPOOL OFF