SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter4\salidas\extractDate.txt
rem   Chapter 4. Date and Conversion 
rem       Functions
rem [Rischert,2004,245]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

SELECT TO_CHAR(start_date_time, 'DD-MON-YYYY') "Start Date", 
 EXTRACT(MONTH FROM start_date_time) "Month", 
 EXTRACT(YEAR FROM start_date_time) "Year", 
 EXTRACT(DAY FROM start_date_time) "Day" 
 FROM section 
 WHERE EXTRACT(MONTH FROM start_date_time) = 4 
 ORDER BY start_date_time;
 
 SPOOL OFF