-- Count parameters
SELECT COUNT(*) AS num_parameters FROM v$parameter;

-- SGA/PGA
ALTER SYSTEM SET sga_target = 1G;
ALTER SYSTEM SET sga_max_size = 2G SCOPE=spfile;
ALTER SYSTEM SET pga_aggregate_target = 1G;

-- Sessions/Processes (SPFILE)
ALTER SYSTEM SET sessions = 1000 SCOPE=spfile;
ALTER SYSTEM SET processes = 750 SCOPE=spfile;

-- PFILE from SPFILE
CREATE PFILE FROM SPFILE;

-- FRA
ALTER SYSTEM SET db_recovery_file_dest_size = 12G;

-- 128MB in bytes: 128*1024*1024 = 134217728
ALTER SESSION SET sort_area_size = 134217728;

-- Pools + cursors
ALTER SYSTEM SET shared_pool_reserved_size = 56M SCOPE=spfile;
ALTER SYSTEM SET java_pool_size = 56M;
ALTER SESSION SET session_cached_cursors = 100;
