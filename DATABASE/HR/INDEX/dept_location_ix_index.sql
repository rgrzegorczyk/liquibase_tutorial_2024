--liquibase formatted sql
--changeset Pretius:dept_location_ix_index runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for dept_location_ix_index
  CREATE INDEX "HR"."DEPT_LOCATION_IX" ON "HR"."DEPARTMENTS" ("LOCATION_ID")
