--liquibase formatted sql
--changeset Pretius:locations_table runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for locations_table
  CREATE TABLE "HR"."LOCATIONS" 
   (	"LOCATION_ID" NUMBER(4,0),
	"STREET_ADDRESS" VARCHAR2(40 CHAR),
	"POSTAL_CODE" VARCHAR2(12 CHAR),
	"CITY" VARCHAR2(30 CHAR) CONSTRAINT "LOC_CITY_NN" NOT NULL ENABLE,
	"STATE_PROVINCE" VARCHAR2(25 CHAR),
	"COUNTRY_ID" CHAR(2 CHAR),
	CONSTRAINT "LOC_ID_PK" PRIMARY KEY ("LOCATION_ID")
  USING INDEX ENABLE
   )
