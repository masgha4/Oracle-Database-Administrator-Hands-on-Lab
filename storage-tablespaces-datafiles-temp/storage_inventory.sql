-- Tablespaces
SELECT name FROM v$tablespace;

-- Datafiles with size (MB + GB)
SELECT tablespace_name,
       file_name,
       bytes/1024/1024 AS size_mb,
       ROUND(bytes/1024/1024/1024, 2) AS size_gb
FROM dba_data_files
ORDER BY tablespace_name, file_name;

-- Tempfiles with size (MB + GB)
SELECT tablespace_name,
       file_name,
       bytes/1024/1024 AS size_mb,
       ROUND(bytes/1024/1024/1024, 2) AS size_gb
FROM dba_temp_files
ORDER BY tablespace_name, file_name;
