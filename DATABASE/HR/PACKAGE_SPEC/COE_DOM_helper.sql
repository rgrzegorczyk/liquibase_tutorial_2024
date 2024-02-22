--liquibase formatted sql
--changeset john:COE_DOM_helper_spec runOnChange:true endDelimiter:\n/ context:version1 labels:JIRA-2
--comment New COE_DOM_helper package spec
CREATE OR REPLACE PACKAGE COE_DOM_helper
AS
  FUNCTION boolean_to_varchar(input BOOLEAN) RETURN VARCHAR2 DETERMINISTIC;
  FUNCTION raw_to_varchar(input RAW) RETURN VARCHAR2 DETERMINISTIC;
  FUNCTION varchar_to_boolean(input VARCHAR2) RETURN BOOLEAN DETERMINISTIC;
  FUNCTION raw_to_boolean(input RAW) RETURN BOOLEAN DETERMINISTIC;
  FUNCTION boolean_to_raw(input BOOLEAN) RETURN RAW DETERMINISTIC;
  FUNCTION varchar_to_raw(input VARCHAR2) RETURN RAW DETERMINISTIC;
  FUNCTION getTextNodeValue(parent DBMS_XMLDOM.DOMELEMENT, child VARCHAR2) 
    RETURN VARCHAR2 DETERMINISTIC;
  FUNCTION getBooleanValue(parent DBMS_XMLDOM.DOMELEMENT, child VARCHAR2) 
    RETURN RAW DETERMINISTIC;
  FUNCTION appendElement(Parent XMLType, Child XMLType) 
    RETURN XMLType DETERMINISTIC;
END;
/