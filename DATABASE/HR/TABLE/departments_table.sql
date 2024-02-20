--liquibase formatted sql
--changeset Pretius:departments_table runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for departments_table
  CREATE TABLE "HR"."DEPARTMENTS" 
   (	"DEPARTMENT_ID" NUMBER(4,0),
	"DEPARTMENT_NAME" VARCHAR2(30 CHAR) CONSTRAINT "DEPT_NAME_NN" NOT NULL ENABLE,
	"MANAGER_ID" NUMBER(6,0),
	"LOCATION_ID" NUMBER(4,0),
	CONSTRAINT "DEPT_ID_PK" PRIMARY KEY ("DEPARTMENT_ID")
  USING INDEX ENABLE
   )
