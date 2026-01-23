-- Alert log location
SELECT * FROM v$diag_info WHERE name = 'Diag Trace';

-- Instance status snapshot
SELECT instance_name, status, database_status FROM v$instance;
