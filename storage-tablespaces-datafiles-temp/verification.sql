-- Re-check sizes after resizing
SELECT file_name, ROUND(bytes/1024/1024/1024,2) AS size_gb
FROM dba_data_files;

SELECT file_name, ROUND(bytes/1024/1024/1024,2) AS size_gb
FROM dba_temp_files;
