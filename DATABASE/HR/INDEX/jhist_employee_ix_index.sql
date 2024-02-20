--liquibase formatted sql
--changeset Pretius:jhist_employee_ix_index runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for jhist_employee_ix_index
  CREATE INDEX "HR"."JHIST_EMPLOYEE_IX" ON "HR"."JOB_HISTORY" ("EMPLOYEE_ID")
