--liquibase formatted sql
--changeset Pretius:dept_loc_fk_ref_constraint runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for dept_loc_fk_ref_constraint
ALTER TABLE "HR"."DEPARTMENTS" ADD CONSTRAINT "DEPT_LOC_FK" FOREIGN KEY ("LOCATION_ID")
	  REFERENCES "HR"."LOCATIONS" ("LOCATION_ID") ENABLE;
