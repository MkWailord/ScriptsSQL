SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter3\salidas\decode.txt
rem   Chapter 3.  Character, Number, 
rem    and Miscellaneous Functions
rem [Rischert,2004,205]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

rem Decode cambia el valor de acuerdo a una condicion
rem if, pudiendo tener default o no
SELECT DISTINCT state, 
 DECODE(state, 'NY', 'New York', 
 'NJ', 'New Jersey') no_default, 
 DECODE(state, 'NY', 'New York', 
 'NJ', 'New Jersey', 
 'OTHER') with_default 
 FROM zipcode 
 WHERE state IN ('NY','NJ','CT');
 
 SPOOL OFF