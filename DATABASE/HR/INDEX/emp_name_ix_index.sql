--liquibase formatted sql
--changeset Pretius:emp_name_ix_index runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for emp_name_ix_index
  CREATE INDEX "HR"."EMP_NAME_IX" ON "HR"."EMPLOYEES" ("LAST_NAME","FIRST_NAME")
