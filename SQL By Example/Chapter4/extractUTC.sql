SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter4\salidas\extractUTC.txt
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
COLUMN 'West coast to UTC' FORMAT A30;
COLUMN 'East coast to UTC' FORMAT A30;
alter session set nls_date_language = 'ENGLISH';

SELECT SYS_EXTRACT_UTC(TIMESTAMP '2002-03-11 7:00:00 -8:00') 
 "West coast to UTC", 
 SYS_EXTRACT_UTC(TIMESTAMP '2002-03-11 10:00:00 -5:00') 
 "East coast to UTC" 
 FROM dual;
 
 SPOOL OFF