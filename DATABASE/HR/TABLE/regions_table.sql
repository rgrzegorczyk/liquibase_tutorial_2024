--liquibase formatted sql
--changeset Pretius:regions_table runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for regions_table
  CREATE TABLE "HR"."REGIONS" 
   (	"REGION_ID" NUMBER CONSTRAINT "REGION_ID_NN" NOT NULL ENABLE,
	"REGION_NAME" VARCHAR2(25 CHAR),
	CONSTRAINT "REG_ID_PK" PRIMARY KEY ("REGION_ID")
  USING INDEX ENABLE
   )
