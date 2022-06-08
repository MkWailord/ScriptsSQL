SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter3\salidas\caseanidado.txt
rem   Chapter 3.  Character, Number, 
rem    and Miscellaneous Functions
rem [Rischert,2004,207]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

rem CASE anidado, cuando el prerequisito es 10 o 50
rem y cuando el costt es menor a 1100, el costo se divide entre 2
rem si eso costo esta entre 1100 y 1500 el costo se multiplica por 1.1
rem si el costo es null, entonces escribe 0
rem si no es ninguno de los anteriores, escribe el costo
SELECT course_no, cost, prerequisite, 
	CASE WHEN cost <1100 THEN 
		CASE WHEN prerequisite IN (10, 50) THEN cost/2
		ELSE cost
		END
	WHEN cost >=1100 AND cost <1500 THEN cost*1.1 
	WHEN cost IS NULL THEN 0 
	ELSE cost 
	END "Test CASE" 
 FROM course 
 WHERE course_no IN (80, 20, 135, 450, 230) 
 ORDER BY 2;
 
 SPOOL OFF