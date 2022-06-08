SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter4\salidas\formato2.txt
rem   Chapter 4. Date and Conversion 
rem       Functions
rem [Rischert,2004,226]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

rem formatos Dia, DIA, Mes DD, YYYY y HH:MI pm
SELECT last_name, 
 TO_CHAR(registration_date, 'Dy') AS "1.Day", 
 TO_CHAR(registration_date, 'DY') AS "2.Day", 
 TO_CHAR(registration_date, 'Month DD, YYYY') 
 AS "Look at the Month", 
 TO_CHAR(registration_date, 'HH:MI pm') AS "Time" 
 FROM student 
 WHERE student_id IN (123, 161, 190);
 
 SPOOL OFF