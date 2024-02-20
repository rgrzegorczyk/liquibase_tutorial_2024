--liquibase formatted sql
--changeset Pretius:jhist_dept_fk_ref_constraint runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for jhist_dept_fk_ref_constraint
ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_DEPT_FK" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "HR"."DEPARTMENTS" ("DEPARTMENT_ID") ENABLE;
