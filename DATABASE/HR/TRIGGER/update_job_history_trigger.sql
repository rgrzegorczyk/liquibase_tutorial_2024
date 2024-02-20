--liquibase formatted sql
--changeset Pretius:update_job_history_trigger runOnChange:true endDelimiter:\n/ context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for update_job_history_trigger
CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."UPDATE_JOB_HISTORY" 
  AFTER UPDATE OF job_id, department_id ON employees
  FOR EACH ROW
BEGIN
  add_job_history(:old.employee_id, :old.hire_date, sysdate, 
                  :old.job_id, :old.department_id);
END;
/

