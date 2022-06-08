SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter6\salidas\crossJoin.txt
rem Chapter 6. Equijoins 
rem [Rischert,2004,334]

SET PAGESIZE 99;
SET LINESIZE 150;
set colsep ' |=| '
rem   alt 176   mauricio 
set null s/Datos
COL PARAMETER FORMAT A10;
COL VALUE     FORMAT A10;
COLUMN column_name FORMAT a50;
alter session set nls_date_language = 'ENGLISH';

SELECT s.instructor_id s_instructor_id, 
 i.instructor_id i_instructor_id 
 FROM section s, instructor i;
 
 SELECT COUNT(*) 
 FROM section CROSS JOIN instructor;


 SPOOL OFF