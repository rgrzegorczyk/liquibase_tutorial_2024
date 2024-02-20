--liquibase formatted sql
--changeset Pretius:locations_seq_sequence runOnChange:false context:INITIAL_SYNC labels:INITIAL_SYNC
--comment Initial changeset for locations_seq_sequence
 CREATE SEQUENCE "HR"."LOCATIONS_SEQ" MINVALUE 1 MAXVALUE 9900 INCREMENT BY 100 START WITH 3300 NOCACHE NOORDER NOCYCLE NOSCALE 
