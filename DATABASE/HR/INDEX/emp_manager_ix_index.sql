--liquibase formatted sql
--changeset Pretius:emp_manager_ix_index runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for emp_manager_ix_index
  CREATE INDEX "HR"."EMP_MANAGER_IX" ON "HR"."EMPLOYEES" ("MANAGER_ID")
