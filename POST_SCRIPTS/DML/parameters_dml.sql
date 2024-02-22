--liquibase formatted sql
--changeset rafal:DEV_parameters_env_type context:version_1 labels:JIRA-3
--preconditions onFail:MARK_RAN onUpdateSQL:TEST
--precondition-sql-check expectedResult:1 select count(*) from dual where sys_context('USERENV','SERVICE_NAME')  like '%DEV%';
--comment Environment type values for PARAMETERS table at DEV only
INSERT INTO HR.PARAMETERS (name, value) VALUES ('ENVIRONMENT_TYPE', 'DEV');

--changeset rafal:PROD_parameters_env_type context:version_1 labels:JIRA-3
--preconditions onFail:MARK_RAN onUpdateSQL:TEST
--precondition-sql-check expectedResult:1 select count(*) from dual where sys_context('USERENV','SERVICE_NAME')  like '%PROD%';
--comment Environment type values for PARAMETERS table at PROD only
INSERT INTO HR.PARAMETERS (name, value) VALUES ('ENVIRONMENT_TYPE', 'PROD');