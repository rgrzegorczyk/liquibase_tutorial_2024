--liquibase formatted sql
--changeset Pretius:loc_city_ix_index runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for loc_city_ix_index
  CREATE INDEX "HR"."LOC_CITY_IX" ON "HR"."LOCATIONS" ("CITY")
