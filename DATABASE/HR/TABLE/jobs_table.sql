--liquibase formatted sql
--changeset Pretius:jobs_table runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for jobs_table
  CREATE TABLE "HR"."JOBS" 
   (	"JOB_ID" VARCHAR2(10 CHAR),
	"JOB_TITLE" VARCHAR2(35 CHAR) CONSTRAINT "JOB_TITLE_NN" NOT NULL ENABLE,
	"MIN_SALARY" NUMBER(6,0),
	"MAX_SALARY" NUMBER(6,0),
	CONSTRAINT "JOB_ID_PK" PRIMARY KEY ("JOB_ID")
  USING INDEX ENABLE
   )
