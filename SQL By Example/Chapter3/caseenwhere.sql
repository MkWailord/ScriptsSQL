SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter3\salidas\caseenwhere.txt
rem   Chapter 3.  Character, Number, 
rem    and Miscellaneous Functions
rem [Rischert,2004,208]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

rem Usando case en el where
SELECT DISTINCT capacity, location 
 FROM section 
WHERE capacity*CASE 
	WHEN SUBSTR(location, 1,1)='L' THEN 2 
	WHEN SUBSTR(location, 1,1)='M' THEN 1.5 
	ELSE NULL 
   END > 30;
   
   SPOOL OFF