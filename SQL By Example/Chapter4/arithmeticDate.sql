SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter4\salidas\arithmeticDate.txt
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

rem agregar 3 horas, 1 dia o 1 dia y medio
SELECT TO_CHAR(SYSDATE, 'MM/DD HH24:MI:SS') now, 
 TO_CHAR(SYSDATE+3/24, 'MM/DD HH24:MI:SS') 
 AS now_plus_3hrs, 
 TO_CHAR(SYSDATE+1, 'MM/DD HH24:MI:SS') tomorrow, 
 TO_CHAR(SYSDATE+1.5, 'MM/DD HH24:MI:SS') AS 
 "36Hrs from now" 
 FROM dual;
 
 SPOOL OFF