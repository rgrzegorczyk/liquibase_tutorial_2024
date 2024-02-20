--liquibase formatted sql
--changeset Pretius:countries_table runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for countries_table
  CREATE TABLE "HR"."COUNTRIES" 
   (	"COUNTRY_ID" CHAR(2 CHAR) CONSTRAINT "COUNTRY_ID_NN" NOT NULL ENABLE,
	"COUNTRY_NAME" VARCHAR2(60 CHAR),
	"REGION_ID" NUMBER,
	CONSTRAINT "COUNTRY_C_ID_PK" PRIMARY KEY ("COUNTRY_ID")
  USING INDEX ENABLE
   )
