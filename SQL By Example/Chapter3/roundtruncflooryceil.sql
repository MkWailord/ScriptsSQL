SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter3\salidas\roundtruncflooryceil.txt
rem   Chapter 3.  Character, Number, 
rem    and Miscellaneous Functions
rem [Rischert,2004,191]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| ';
rem   alt 176   mauricio 
set null s/Datos;
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

rem Round redondea el numero
rem Trunc recorta los decimales sin redondear
rem si no se especifica digitos, redondea o recorta
rem a entero
SELECT 222.34501, 
 ROUND(222.34501, 2), 
 TRUNC(222.34501, 2) 
 FROM dual;

rem Mismo resultado pero desde el lado izquierdo
SELECT 222.34501, 
 ROUND(222.34501, -2), 
 TRUNC(222.34501, -2) 
 FROM dual;

rem Floor regresa el entero hacia menor
rem Ceil regresa el entero hacia mayor
SELECT FLOOR(22.5), CEIL(22.5), TRUNC(22.5), ROUND(22.5) 
 FROM dual;
 
SPOOL OFF