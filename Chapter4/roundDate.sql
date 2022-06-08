SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter4\salidas\roundDate.txt
rem   Chapter 4. Date and Conversion 
rem       Functions
rem [Rischert,2004,244]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

SELECT TO_CHAR(SYSDATE,'DD-MON-YYYY HH24:MI') now, 
 TO_CHAR(ROUND(SYSDATE),'DD-MON-YYYY HH24:MI') day, 
 TO_CHAR(ROUND(SYSDATE,'MM'),'DD-MON-YYYY HH24:MI') 
 mon 
 FROM dual;
 
 SPOOL OFF