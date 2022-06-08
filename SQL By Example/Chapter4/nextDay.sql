SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter4\salidas\nextDay.txt
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

rem funcion next_day
SELECT TO_CHAR(TO_DATE('12/31/1999','MM/DD/YYYY'), 
 'MM/DD/YYYY DY') "New Year's Eve", 
 TO_CHAR(NEXT_DAY(TO_DATE('12/31/1999', 
 'MM/DD/YYYY'), 
 'SUNDAY'),'MM/DD/YYYY DY') 
 "First Sunday" 
 FROM dual;
 
 SPOOL OFF