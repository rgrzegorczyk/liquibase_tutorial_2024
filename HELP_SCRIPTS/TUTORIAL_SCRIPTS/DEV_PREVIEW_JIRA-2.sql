-- Lock Database
UPDATE HR.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'localhost (192.168.0.2)', LOCKGRANTED = SYSTIMESTAMP WHERE ID = 1 AND LOCKED = 0;

-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: master.xml
-- Ran at: 21.02.2024, 20:40
-- Against: HR@jdbc:oracle:thin:@dev_low
-- Liquibase version: 4.25.1
-- *********************************************************************

-- Changeset DATABASE/HR/VIEW/emp_details_view_view.sql::emp_details_view_view::john
-- Better formatting and reqritten Oracle joins to ANSI
create or replace force editionable view HR.EMP_DETAILS_VIEW (
   EMPLOYEE_ID,
   JOB_ID,
   MANAGER_ID,
   DEPARTMENT_ID,
   LOCATION_ID,
   COUNTRY_ID,
   FIRST_NAME,
   LAST_NAME,
   SALARY,
   COMMISSION_PCT,
   DEPARTMENT_NAME,
   JOB_TITLE,
   CITY,
   STATE_PROVINCE,
   COUNTRY_NAME,
   REGION_NAME
) as
   select e.employee_id,
          e.job_id,
          e.manager_id,
          e.department_id,
          d.location_id,
          l.country_id,
          e.first_name,
          e.last_name,
          e.salary,
          e.commission_pct,
          d.department_name,
          j.job_title,
          l.city,
          l.state_province,
          c.country_name,
          r.region_name
     from employees e
     join departments d
       on e.department_id = d.department_id
     join jobs j
       on e.job_id = j.job_id
     join locations l
       on d.location_id = l.location_id
     join countries c
       on l.country_id = c.country_id
     join regions r
       on c.region_id = r.region_id
with read only;
/

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('emp_details_view_view', 'john', 'DATABASE/HR/VIEW/emp_details_view_view.sql', SYSTIMESTAMP, 47, '9:5ed545069d87ec332da143ddc20fbd9c', 'sql', 'Better formatting and reqritten Oracle joins to ANSI', 'EXECUTED', 'version_1', 'jira-2', '4.25.1', '8544443484');

-- Changeset DATABASE/HR/PACKAGE_SPEC/COE_DOM_helper.sql::COE_DOM_helper_spec::john
-- New COE_DOM_helper package spec
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

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('COE_DOM_helper_spec', 'john', 'DATABASE/HR/PACKAGE_SPEC/COE_DOM_helper.sql', SYSTIMESTAMP, 48, '9:ae699ae6b8f14d431481c329de8d626a', 'sql', 'New COE_DOM_helper package spec', 'EXECUTED', 'version1', 'jira-2', '4.25.1', '8544443484');

-- Changeset DATABASE/HR/PACKAGE_BODY/COE_DOM_helper.sql::COE_DOM_helper_body::john
-- New COE_DOM_helper package body
CREATE OR REPLACE PACKAGE BODY COE_DOM_helper
AS
FUNCTION raw_to_varchar(input RAW)
RETURN VARCHAR2 DETERMINISTIC
IS
BEGIN
  IF (input = hexToRaw('01')) THEN
    RETURN 'TRUE';
  END IF;
  IF (input = hexToRaw('00')) THEN
    RETURN 'FALSE';
  END IF;
  RETURN NULL;
END;

FUNCTION boolean_to_varchar(input BOOLEAN)
RETURN VARCHAR2 DETERMINISTIC
IS
BEGIN
  IF (input = TRUE) THEN
    RETURN 'TRUE';
  END IF;
  IF (input =FALSE) THEN
    RETURN 'FALSE';
  END IF;
  RETURN NULL;
END;

FUNCTION varchar_to_raw(input VARCHAR2)
RETURN RAW DETERMINISTIC
IS
BEGIN
  IF (upper(input) IN ('TRUE', 'Y', 'YES', '1')) THEN
    RETURN hexToRaw('01');
  END IF;
  IF (upper(input) IN ('FALSE', 'N', 'NO', '0')) THEN
    RETURN hexToRaw('00');
  END IF;
  RETURN NULL;
END;

FUNCTION boolean_to_raw(input BOOLEAN)
RETURN RAW DETERMINISTIC
IS
BEGIN
  IF (input = TRUE) THEN
    RETURN hexToRaw('01');
  END IF;
  IF (input = FALSE) THEN
    RETURN hexToRaw('00');
  END IF;
  RETURN NULL;
END;

FUNCTION varchar_to_boolean(input VARCHAR2)
RETURN BOOLEAN DETERMINISTIC
IS
BEGIN
  IF (upper(input) IN ('TRUE', 'Y', 'YES', '1')) THEN
    RETURN TRUE;
  END IF;
  IF (upper(input) IN ('FALSE', 'N', 'NO', '0')) THEN
    RETURN FALSE;
  END IF;
  RETURN NULL;
END;

FUNCTION raw_to_boolean(input RAW)
RETURN BOOLEAN DETERMINISTIC
IS
BEGIN
  IF (input = hexToRaw('01')) THEN
    RETURN TRUE;
  END IF;
  IF (input = hexToRaw('00')) THEN
    RETURN FALSE;
  END IF;
  RETURN NULL;
END;

FUNCTION getBooleanValue(parent DBMS_XMLDOM.DOMELEMENT, child VARCHAR2)
RETURN RAW DETERMINISTIC
AS
BEGIN
  RETURN varchar_to_raw(getTextNodeValue(parent, child));
END;

FUNCTION getTextNodeValue(parent DBMS_XMLDOM.DOMELEMENT, child VARCHAR2)
RETURN VARCHAR2 DETERMINISTIC
AS
  nodeList      DBMS_XMLDOM.DOMNODELIST;
  childNode     DBMS_XMLDOM.DOMNODE;
  value         VARCHAR2(2048) := NULL;
BEGIN
  nodeList := DBMS_XMLDOM.GETELEMENTSBYTAGNAME(parent, child);
  IF (DBMS_XMLDOM.getlength(nodeList) > 0) THEN
    childNode := DBMS_XMLDOM.ITEM(nodeList, 0);
    childNode := DBMS_XMLDOM.GETFIRSTCHILD(childNode);
    value     := DBMS_XMLDOM.GETNODEVALUE(childNode);
  END IF;
  RETURN value;
END;

FUNCTION appendElement(PARENT XMLType, Child XMLType)
RETURN XMLType DETERMINISTIC
IS
  PARENT_DOCUMENT    DBMS_XMLDOM.DOMDOCUMENT;
  PARENT_ROOTNODE    DBMS_XMLDOM.DOMNODE;

  CHILD_DOCUMENT     DBMS_XMLDOM.DOMDOCUMENT;
  CHILD_ROOTNODE     DBMS_XMLDOM.DOMNODE;
BEGIN
  PARENT_DOCUMENT := DBMS_XMLDOM.newDOMDocument(PARENT);
  PARENT_ROOTNODE := 
    DBMS_XMLDOM.makeNode(DBMS_XMLDOM.getDocumentElement(PARENT_DOCUMENT));

  CHILD_DOCUMENT  := DBMS_XMLDOM.newDOMDocument(CHILD);
  CHILD_ROOTNODE  := 
    DBMS_XMLDOM.makeNode(DBMS_XMLDOM.getDocumentElement(CHILD_DOCUMENT));

  
  CHILD_ROOTNODE  := DBMS_XMLDOM.importNode(PARENT_DOCUMENT, CHILD_ROOTNODE, TRUE);
  PARENT_ROOTNODE := DBMS_XMLDOM.appendChild(PARENT_ROOTNODE, CHILD_ROOTNODE);
  RETURN PARENT;
END;

END;
/

INSERT INTO HR.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('COE_DOM_helper_body', 'john', 'DATABASE/HR/PACKAGE_BODY/COE_DOM_helper.sql', SYSTIMESTAMP, 49, '9:4d0b065adc79ff8ce7357139dbb66c10', 'sql', 'New COE_DOM_helper package body', 'EXECUTED', 'version1', 'jira-2', '4.25.1', '8544443484');

-- Release Database Lock
UPDATE HR.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

