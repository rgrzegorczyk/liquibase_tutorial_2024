--liquibase formatted sql
--changeset Pretius:jhist_emp_fk_ref_constraint runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for jhist_emp_fk_ref_constraint
ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_EMP_FK" FOREIGN KEY ("EMPLOYEE_ID")
	  REFERENCES "HR"."EMPLOYEES" ("EMPLOYEE_ID") ENABLE;
