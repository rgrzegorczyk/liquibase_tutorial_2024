-- Lock Database
UPDATE HR.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'localhost (192.168.0.2)', LOCKGRANTED = SYSTIMESTAMP WHERE ID = 1 AND LOCKED = 0;

-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: master.xml
-- Ran at: 21.02.2024, 13:42
-- Against: HR@jdbc:oracle:thin:@dev_low
-- Liquibase version: 4.25.1
-- *********************************************************************

-- Changeset DATABASE/HR/TABLE/customers.sql::create_customers_table::rafal
-- New customers table
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

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('create_customers_table', 'rafal', 'DATABASE/HR/TABLE/customers.sql', SYSTIMESTAMP, 45, '9:06b09416661243d880a2ddd1aa636fa9', 'sql', 'New customers table', 'EXECUTED', 'version1', 'jira-1', '4.25.1', '8519349976');

-- Changeset DATABASE/HR/REF_CONSTRAINT/customers_country_fk.sql::customers_country_fk::rafal
-- Foreign key customers ->countries
alter table customers add CONSTRAINT customers_country_fk FOREIGN KEY (country_id) REFERENCES countries (country_id);

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('customers_country_fk', 'rafal', 'DATABASE/HR/REF_CONSTRAINT/customers_country_fk.sql', SYSTIMESTAMP, 46, '9:7423834c8c862b232298cf190e42ced5', 'sql', 'Foreign key customers ->countries', 'EXECUTED', 'version1', 'jira-1', '4.25.1', '8519349976');

-- Release Database Lock
UPDATE HR.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

