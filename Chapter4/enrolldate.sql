SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter4\salidas\enrolldate.txt
rem   Chapter 4. Date and Conversion 
rem       Functions
rem [Rischert,2004,231]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

rem Despliega sin importar la hora
SELECT student_id, TO_CHAR(enroll_date, 'DD-MON-YYYY HH24:MI:SS') 
 FROM enrollment 
 WHERE TRUNC(enroll_date) = TO_DATE('07-FEB-2003', 'DD-MON-YYYY');
 
 SPOOL OFF