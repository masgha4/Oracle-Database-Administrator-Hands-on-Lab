SHOW PARAMETER db_name;
SHOW PARAMETER db_unique_name;
SHOW PARAMETER instance_name;
SHOW PARAMETER service_names;

SELECT instance_name, status, database_status FROM v$instance;
