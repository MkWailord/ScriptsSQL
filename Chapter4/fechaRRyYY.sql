SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter4\salidas\fechaRRyYY.txt
rem   Chapter 4. Date and Conversion 
rem       Functions
rem [Rischert,2004,230]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

SELECT TO_CHAR(TO_DATE('17-OCT-67','DD-MON-RR'),'YYYY') "1900", 
 TO_CHAR(TO_DATE('17-OCT-17','DD-MON-RR'),'YYYY') "2000",
 TO_CHAR(TO_DATE('17-OCT-67','DD-MON-YY'),'YYYY') "2067", 
 TO_CHAR(TO_DATE('17-OCT-17','DD-MON-YY'),'YYYY') "2017"
 FROM dual;
 
 SPOOL OFF