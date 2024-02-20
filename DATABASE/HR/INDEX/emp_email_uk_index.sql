--liquibase formatted sql
--changeset Pretius:emp_email_uk_index runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for emp_email_uk_index
  CREATE UNIQUE INDEX "HR"."EMP_EMAIL_UK" ON "HR"."EMPLOYEES" ("EMAIL")
