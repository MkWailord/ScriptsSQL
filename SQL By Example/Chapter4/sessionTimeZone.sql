SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter4\salidas\sessionTimeZone.txt
rem   Chapter 4. Date and Conversion 
rem       Functions
rem [Rischert,2004,265]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';


SELECT SESSIONTIMEZONE 
 FROM dual;
 
 SPOOL OFF