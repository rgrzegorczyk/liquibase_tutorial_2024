--liquibase formatted sql
--changeset rafal:create_customers_table runOnChange:false context:version1 labels:JIRA-1
--comment New customers table
CREATE TABLE HR.CUSTOMERS
(
   cust_id                  NUMBER         NOT NULL,
   cust_first_name          VARCHAR2(20)   NOT NULL,
   cust_last_name           VARCHAR2(40)   NOT NULL,
   cust_gender              CHAR(1)        NOT NULL,
   cust_year_of_birth       NUMBER(4)      NOT NULL,
   cust_marital_status      VARCHAR2(20),
   cust_street_address      VARCHAR2(40)   NOT NULL,
   cust_postal_code         VARCHAR2(10)   NOT NULL,
   cust_city                VARCHAR2(30)   NOT NULL,
   cust_city_id             NUMBER         NOT NULL,
   cust_state_province      VARCHAR2(40)   NOT NULL,
   cust_state_province_id   NUMBER         NOT NULL,
   country_id               CHAR(2)        NOT NULL,
   cust_main_phone_number   VARCHAR2(25)   NOT NULL,
   CONSTRAINT customers_pk
      PRIMARY KEY (cust_id)
);