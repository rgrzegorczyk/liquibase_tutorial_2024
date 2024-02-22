--liquibase formatted sql
--changeset rafal:compile_HR_before endDelimiter:\n/ context:version_1 labels:JIRA-3 runAlways:true
--comment Compile HR invalid objects before other changesets executuon
begin
   dbms_utility.compile_schema(
      schema         => 'HR',
      compile_all    => false,
      reuse_settings => true);
end;
/