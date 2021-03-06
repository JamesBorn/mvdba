
set pagesize 0
set longchunksize 32765
set long 1000
set linesize 1000
set trimspool on
set feedback on
set verify on
set echo on

BEGIN
    DBMS_METADATA.SET_TRANSFORM_PARAM ( DBMS_METADATA.SESSION_TRANSFORM, 'PRETTY'               , TRUE  );
    DBMS_METADATA.SET_TRANSFORM_PARAM ( DBMS_METADATA.SESSION_TRANSFORM, 'SQLTERMINATOR'        , TRUE  );

    DBMS_METADATA.SET_TRANSFORM_PARAM ( DBMS_METADATA.SESSION_TRANSFORM, 'SEGMENT_ATTRIBUTES'   , TRUE  );
    DBMS_METADATA.SET_TRANSFORM_PARAM ( DBMS_METADATA.SESSION_TRANSFORM, 'STORAGE'              , FALSE );
    DBMS_METADATA.SET_TRANSFORM_PARAM ( DBMS_METADATA.SESSION_TRANSFORM, 'TABLESPACE'           , TRUE  );
END;
/


SELECT DBMS_METADATA.GET_DDL('VIEW', object_name, owner  )
  FROM dba_objects
 WHERE 1=1
   AND object_type = 'VIEW'
   AND owner LIKE '%NPA%'
/

--
--


