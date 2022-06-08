SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter4\salidas\whereFecha2.txt
rem   Chapter 4. Date and Conversion 
rem       Functions
rem [Rischert,2004,228]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

SELECT last_name, registration_date 
 FROM student 
 WHERE registration_date = '22-JAN-2003';
 
 SPOOL OFF