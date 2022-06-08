SPOOL C:\Users\jcasa\Desktop\DistribuitedDataBase\Libro_SQL_BY_EXAMPLE\Chapter3\salidas\decodenulos.txt
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

	rem decode nulos
	SELECT instructor_id, zip, 
	 DECODE(zip, NULL, 'NO zipcode!', zip) "Decode Use" 
	 FROM instructor 
	 WHERE instructor_id IN (102, 110);
SPOOL OFF