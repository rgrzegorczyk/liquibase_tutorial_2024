--liquibase formatted sql
--changeset Pretius:secure_employees_trigger runOnChange:true endDelimiter:\n/ context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for secure_employees_trigger
CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."SECURE_EMPLOYEES" 
  BEFORE INSERT OR UPDATE OR DELETE ON employees
BEGIN
  secure_dml;
END secure_employees;
/

