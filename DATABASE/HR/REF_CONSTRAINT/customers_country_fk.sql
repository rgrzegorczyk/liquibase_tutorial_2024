--liquibase formatted sql
--changeset rafal:customers_country_fk  context:version1 labels:JIRA-1
--comment Foreign key customers ->countries
alter table customers add CONSTRAINT customers_country_fk FOREIGN KEY (country_id) REFERENCES countries (country_id);