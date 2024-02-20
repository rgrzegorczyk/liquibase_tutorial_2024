--liquibase formatted sql
--changeset Pretius:secure_dml_procedure runOnChange:true endDelimiter:\n/ context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for secure_dml_procedure
CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."SECURE_DML" 
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205, 
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;
/
