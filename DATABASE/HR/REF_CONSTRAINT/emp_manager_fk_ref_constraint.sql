--liquibase formatted sql
--changeset Pretius:emp_manager_fk_ref_constraint runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for emp_manager_fk_ref_constraint
ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_MANAGER_FK" FOREIGN KEY ("MANAGER_ID")
	  REFERENCES "HR"."EMPLOYEES" ("EMPLOYEE_ID") ENABLE;
