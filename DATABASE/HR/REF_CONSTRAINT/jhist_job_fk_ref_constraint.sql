--liquibase formatted sql
--changeset Pretius:jhist_job_fk_ref_constraint runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for jhist_job_fk_ref_constraint
ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_JOB_FK" FOREIGN KEY ("JOB_ID")
	  REFERENCES "HR"."JOBS" ("JOB_ID") ENABLE;
