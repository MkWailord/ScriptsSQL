SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter4\salidas\extractTimeStamp.txt
rem   Chapter 4. Date and Conversion 
rem       Functions
rem [Rischert,2004,260]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

SELECT EXTRACT(HOUR FROM TIMESTAMP '2002-03-11 15:48:01.123') hour, 
 EXTRACT(MINUTE FROM TIMESTAMP '2002-03-11 15:48:01.123') minute, 
 EXTRACT(SECOND FROM TIMESTAMP '2002-03-11 15:48:01.123') second, 
 EXTRACT(YEAR FROM TIMESTAMP '2002-03-11 15:48:01.123') year, 
 EXTRACT(MONTH FROM TIMESTAMP '2002-03-11 15:48:01.123') month, 
 EXTRACT(DAY FROM TIMESTAMP '2002-03-11 15:48:01.123') day 
 FROM dual;
 
 SPOOL OFF