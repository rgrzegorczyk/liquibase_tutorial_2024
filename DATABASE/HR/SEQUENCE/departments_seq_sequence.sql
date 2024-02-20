--liquibase formatted sql
--changeset Pretius:departments_seq_sequence runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for departments_seq_sequence
 CREATE SEQUENCE "HR"."DEPARTMENTS_SEQ" MINVALUE 1 MAXVALUE 9990 INCREMENT BY 10 START WITH 280 NOCACHE NOORDER NOCYCLE NOSCALE 
