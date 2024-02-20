--liquibase formatted sql
--changeset Pretius:employees_seq_sequence runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for employees_seq_sequence
 CREATE SEQUENCE "HR"."EMPLOYEES_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 207 NOCACHE NOORDER NOCYCLE NOSCALE 
