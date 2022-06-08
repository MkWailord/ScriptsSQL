SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter3\salidas\nullif.txt
rem   Chapter 3.  Character, Number, 
rem    and Miscellaneous Functions
rem [Rischert,2004,203]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

rem Aplica nulo de acuerdo a una condición de igualdad
SELECT student_id, 
 TO_CHAR(created_date, 'DD-MON-YY HH24:MI:SS') "Created", 
 TO_CHAR(modified_date, 'DD-MON-YY HH24:MI:SS') "Modified", 
 NULLIF(created_date, modified_date) "Null if equal" 
 FROM student 
 WHERE student_id IN (150, 340);
 
 SPOOL OFF