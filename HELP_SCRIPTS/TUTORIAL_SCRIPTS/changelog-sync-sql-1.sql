-- Create Database Lock Table
CREATE TABLE HR.DATABASECHANGELOGLOCK (ID INTEGER NOT NULL, LOCKED NUMBER(1) NOT NULL, LOCKGRANTED TIMESTAMP, LOCKEDBY VARCHAR2(255), CONSTRAINT PK_DATABASECHANGELOGLOCK PRIMARY KEY (ID));

-- Initialize Database Lock Table
DELETE FROM HR.DATABASECHANGELOGLOCK;

INSERT INTO HR.DATABASECHANGELOGLOCK (ID, LOCKED) VALUES (1, 0);

-- Lock Database
UPDATE HR.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'localhost (192.168.0.2)', LOCKGRANTED = SYSTIMESTAMP WHERE ID = 1 AND LOCKED = 0;

-- Create Database Change Log Table
CREATE TABLE HR.DATABASECHANGELOG (ID VARCHAR2(255) NOT NULL, AUTHOR VARCHAR2(255) NOT NULL, FILENAME VARCHAR2(255) NOT NULL, DATEEXECUTED TIMESTAMP NOT NULL, ORDEREXECUTED INTEGER NOT NULL, EXECTYPE VARCHAR2(10) NOT NULL, MD5SUM VARCHAR2(35), DESCRIPTION VARCHAR2(255), COMMENTS VARCHAR2(255), TAG VARCHAR2(255), LIQUIBASE VARCHAR2(20), CONTEXTS VARCHAR2(255), LABELS VARCHAR2(255), DEPLOYMENT_ID VARCHAR2(10));

-- *********************************************************************
-- SQL to add all changesets to database history table
-- *********************************************************************
-- Change Log: master.xml
-- Ran at: 20.02.2024, 08:29
-- Against: HR@jdbc:oracle:thin:@dev_low
-- Liquibase version: 4.25.1
-- *********************************************************************

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('departments_seq_sequence', 'Pretius', 'DATABASE/HR/SEQUENCE/departments_seq_sequence.sql', SYSTIMESTAMP, 1, '9:9e9c563b7bfcec4422c7d7d57493d6f6', 'sql', 'Initial changeset for departments_seq_sequence', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('employees_seq_sequence', 'Pretius', 'DATABASE/HR/SEQUENCE/employees_seq_sequence.sql', SYSTIMESTAMP, 2, '9:25cb7338d155f8286e101a298cdaa31f', 'sql', 'Initial changeset for employees_seq_sequence', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('locations_seq_sequence', 'Pretius', 'DATABASE/HR/SEQUENCE/locations_seq_sequence.sql', SYSTIMESTAMP, 3, '9:ab89141f5efa8237eac9c3420e6f9fd3', 'sql', 'Initial changeset for locations_seq_sequence', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('countries_table', 'Pretius', 'DATABASE/HR/TABLE/countries_table.sql', SYSTIMESTAMP, 4, '9:c67ad013087087942b152ff54e9af283', 'sql', 'Initial changeset for countries_table', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('departments_table', 'Pretius', 'DATABASE/HR/TABLE/departments_table.sql', SYSTIMESTAMP, 5, '9:a3413b52a0a596b562defc8397516365', 'sql', 'Initial changeset for departments_table', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('employees_table', 'Pretius', 'DATABASE/HR/TABLE/employees_table.sql', SYSTIMESTAMP, 6, '9:860f4d4ba1e81a9346c4cff53ad1189f', 'sql', 'Initial changeset for employees_table', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('job_history_table', 'Pretius', 'DATABASE/HR/TABLE/job_history_table.sql', SYSTIMESTAMP, 7, '9:8e71ec12ffb3b17cea40e21d19cae3ec', 'sql', 'Initial changeset for job_history_table', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('jobs_table', 'Pretius', 'DATABASE/HR/TABLE/jobs_table.sql', SYSTIMESTAMP, 8, '9:6179161c9e1d950d16f7133cdcdbb479', 'sql', 'Initial changeset for jobs_table', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('locations_table', 'Pretius', 'DATABASE/HR/TABLE/locations_table.sql', SYSTIMESTAMP, 9, '9:6f3e1c13a168a32f3c8f3b111ce5cfcf', 'sql', 'Initial changeset for locations_table', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('regions_table', 'Pretius', 'DATABASE/HR/TABLE/regions_table.sql', SYSTIMESTAMP, 10, '9:3023c5fbb628b6e883cd3919ee1e5e35', 'sql', 'Initial changeset for regions_table', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('emp_details_view_view', 'Pretius', 'DATABASE/HR/VIEW/emp_details_view_view.sql', SYSTIMESTAMP, 11, '9:115fc3ded65f9d0121e22cc0a28f7e83', 'sql', 'Initial changeset for emp_details_view_view', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('countr_reg_fk_ref_constraint', 'Pretius', 'DATABASE/HR/REF_CONSTRAINT/countr_reg_fk_ref_constraint.sql', SYSTIMESTAMP, 12, '9:298b58db0fb8473fa07fd9580dfc4995', 'sql', 'Initial changeset for countr_reg_fk_ref_constraint', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('dept_loc_fk_ref_constraint', 'Pretius', 'DATABASE/HR/REF_CONSTRAINT/dept_loc_fk_ref_constraint.sql', SYSTIMESTAMP, 13, '9:5c0bff0a5c8a4de7523032f283b16337', 'sql', 'Initial changeset for dept_loc_fk_ref_constraint', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('dept_mgr_fk_ref_constraint', 'Pretius', 'DATABASE/HR/REF_CONSTRAINT/dept_mgr_fk_ref_constraint.sql', SYSTIMESTAMP, 14, '9:302fee82e60d5f23e7466d72c9f0949c', 'sql', 'Initial changeset for dept_mgr_fk_ref_constraint', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('emp_dept_fk_ref_constraint', 'Pretius', 'DATABASE/HR/REF_CONSTRAINT/emp_dept_fk_ref_constraint.sql', SYSTIMESTAMP, 15, '9:5cf0aa831a6d673434de538aa6f6b70a', 'sql', 'Initial changeset for emp_dept_fk_ref_constraint', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('emp_job_fk_ref_constraint', 'Pretius', 'DATABASE/HR/REF_CONSTRAINT/emp_job_fk_ref_constraint.sql', SYSTIMESTAMP, 16, '9:9008387f7563ec7c35d9b719228ce962', 'sql', 'Initial changeset for emp_job_fk_ref_constraint', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('emp_manager_fk_ref_constraint', 'Pretius', 'DATABASE/HR/REF_CONSTRAINT/emp_manager_fk_ref_constraint.sql', SYSTIMESTAMP, 17, '9:749928f9aaf864ba05d4c977fc1d086d', 'sql', 'Initial changeset for emp_manager_fk_ref_constraint', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('jhist_dept_fk_ref_constraint', 'Pretius', 'DATABASE/HR/REF_CONSTRAINT/jhist_dept_fk_ref_constraint.sql', SYSTIMESTAMP, 18, '9:5dd2a7e4618eee1ccc7a8b600d8a5fca', 'sql', 'Initial changeset for jhist_dept_fk_ref_constraint', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('jhist_emp_fk_ref_constraint', 'Pretius', 'DATABASE/HR/REF_CONSTRAINT/jhist_emp_fk_ref_constraint.sql', SYSTIMESTAMP, 19, '9:0fccf1538ff60c6192f19f34e9f59410', 'sql', 'Initial changeset for jhist_emp_fk_ref_constraint', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('jhist_job_fk_ref_constraint', 'Pretius', 'DATABASE/HR/REF_CONSTRAINT/jhist_job_fk_ref_constraint.sql', SYSTIMESTAMP, 20, '9:1c786f9024595e6880d4a1676de1e4f3', 'sql', 'Initial changeset for jhist_job_fk_ref_constraint', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('loc_c_id_fk_ref_constraint', 'Pretius', 'DATABASE/HR/REF_CONSTRAINT/loc_c_id_fk_ref_constraint.sql', SYSTIMESTAMP, 21, '9:cd25e5b79c0b60aa3539671de82d6ade', 'sql', 'Initial changeset for loc_c_id_fk_ref_constraint', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('secure_dml_procedure', 'Pretius', 'DATABASE/HR/PROCEDURE/secure_dml_procedure.sql', SYSTIMESTAMP, 22, '9:16bddf511613ce84c1df853de018a86a', 'sql', 'Initial changeset for secure_dml_procedure', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add_job_history_procedure', 'Pretius', 'DATABASE/HR/PROCEDURE/add_job_history_procedure.sql', SYSTIMESTAMP, 23, '9:6163dfaaac46a8c992d973c38ec5cf1b', 'sql', 'Initial changeset for add_job_history_procedure', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('dept_location_ix_index', 'Pretius', 'DATABASE/HR/INDEX/dept_location_ix_index.sql', SYSTIMESTAMP, 24, '9:0965671e6ba98ca109ac9492a7c8f992', 'sql', 'Initial changeset for dept_location_ix_index', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('emp_department_ix_index', 'Pretius', 'DATABASE/HR/INDEX/emp_department_ix_index.sql', SYSTIMESTAMP, 25, '9:cb4b33bbd5cad14f2ed09be9164d6957', 'sql', 'Initial changeset for emp_department_ix_index', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('emp_email_uk_index', 'Pretius', 'DATABASE/HR/INDEX/emp_email_uk_index.sql', SYSTIMESTAMP, 26, '9:b12f5decc5d51dd266b87d0153d17629', 'sql', 'Initial changeset for emp_email_uk_index', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('emp_job_ix_index', 'Pretius', 'DATABASE/HR/INDEX/emp_job_ix_index.sql', SYSTIMESTAMP, 27, '9:278591757c61d5ddc4159d0706bd9e10', 'sql', 'Initial changeset for emp_job_ix_index', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('emp_manager_ix_index', 'Pretius', 'DATABASE/HR/INDEX/emp_manager_ix_index.sql', SYSTIMESTAMP, 28, '9:4f6ca582a8a0d00e2c02608f45646bbe', 'sql', 'Initial changeset for emp_manager_ix_index', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('emp_name_ix_index', 'Pretius', 'DATABASE/HR/INDEX/emp_name_ix_index.sql', SYSTIMESTAMP, 29, '9:1686a376de2efc03cb295a28d2211c3c', 'sql', 'Initial changeset for emp_name_ix_index', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('jhist_department_ix_index', 'Pretius', 'DATABASE/HR/INDEX/jhist_department_ix_index.sql', SYSTIMESTAMP, 30, '9:3dcbd027fff88638a0593450adb2000b', 'sql', 'Initial changeset for jhist_department_ix_index', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('jhist_employee_ix_index', 'Pretius', 'DATABASE/HR/INDEX/jhist_employee_ix_index.sql', SYSTIMESTAMP, 31, '9:3a59518f023e611045856442b1180640', 'sql', 'Initial changeset for jhist_employee_ix_index', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('jhist_job_ix_index', 'Pretius', 'DATABASE/HR/INDEX/jhist_job_ix_index.sql', SYSTIMESTAMP, 32, '9:d7264ff2d90045a37c24efde4392031e', 'sql', 'Initial changeset for jhist_job_ix_index', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('loc_city_ix_index', 'Pretius', 'DATABASE/HR/INDEX/loc_city_ix_index.sql', SYSTIMESTAMP, 33, '9:e28398155d3a2452459c589816781068', 'sql', 'Initial changeset for loc_city_ix_index', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('loc_country_ix_index', 'Pretius', 'DATABASE/HR/INDEX/loc_country_ix_index.sql', SYSTIMESTAMP, 34, '9:77e899517a17cfe1b23baeb304769e53', 'sql', 'Initial changeset for loc_country_ix_index', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('loc_state_province_ix_index', 'Pretius', 'DATABASE/HR/INDEX/loc_state_province_ix_index.sql', SYSTIMESTAMP, 35, '9:1c59f6b5bc2fa30680480ed5f25c195f', 'sql', 'Initial changeset for loc_state_province_ix_index', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('secure_employees_trigger', 'Pretius', 'DATABASE/HR/TRIGGER/secure_employees_trigger.sql', SYSTIMESTAMP, 36, '9:48c78c804be5a86c5b8966aecc549695', 'sql', 'Initial changeset for secure_employees_trigger', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('update_job_history_trigger', 'Pretius', 'DATABASE/HR/TRIGGER/update_job_history_trigger.sql', SYSTIMESTAMP, 37, '9:bf989ffe251be12ded86221fad261233', 'sql', 'Initial changeset for update_job_history_trigger', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('countries_comments', 'Pretius', 'DATABASE/HR/COMMENT/countries_comments.sql', SYSTIMESTAMP, 38, '9:f03c575720e3ff25f90b782bc77a8d39', 'sql', 'Initial changeset for countries_comments', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('departments_comments', 'Pretius', 'DATABASE/HR/COMMENT/departments_comments.sql', SYSTIMESTAMP, 39, '9:6d2e5b002d32891db68e209f7cae4c91', 'sql', 'Initial changeset for departments_comments', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('employees_comments', 'Pretius', 'DATABASE/HR/COMMENT/employees_comments.sql', SYSTIMESTAMP, 40, '9:d30442277883268b9eb03eafec053a5a', 'sql', 'Initial changeset for employees_comments', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('job_history_comments', 'Pretius', 'DATABASE/HR/COMMENT/job_history_comments.sql', SYSTIMESTAMP, 41, '9:2fbebfb5cedfd0966c945c333c9d216b', 'sql', 'Initial changeset for job_history_comments', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('jobs_comments', 'Pretius', 'DATABASE/HR/COMMENT/jobs_comments.sql', SYSTIMESTAMP, 42, '9:48e09003eaed792d576912fbba13c57c', 'sql', 'Initial changeset for jobs_comments', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('locations_comments', 'Pretius', 'DATABASE/HR/COMMENT/locations_comments.sql', SYSTIMESTAMP, 43, '9:77110b6ff41621f46658764e67bd24a5', 'sql', 'Initial changeset for locations_comments', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('regions_comments', 'Pretius', 'DATABASE/HR/COMMENT/regions_comments.sql', SYSTIMESTAMP, 44, '9:94d65cd7267a08930c67f7b5a19380fd', 'sql', 'Initial changeset for regions_comments', 'EXECUTED', 'INITIAL_SYNC', 'initial_sync', '4.25.1', '8414185938');

-- Release Database Lock
UPDATE HR.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;
