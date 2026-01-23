-- Verify user tablespaces
SELECT username, default_tablespace, temporary_tablespace
FROM dba_users
WHERE username='JOHN';

-- Verify roles
SELECT granted_role
FROM dba_role_privs
WHERE grantee='JOHN';

-- Verify JohnTBS file size 1GB
SELECT tablespace_name, file_name, ROUND(bytes/1024/1024/1024,2) AS size_gb
FROM dba_data_files
WHERE tablespace_name='JOHNTBS';

-- Count total users
SELECT COUNT(*) AS total_users FROM dba_users;

-- Oracle maintained users
SELECT COUNT(*) AS oracle_maintained_users
FROM dba_users
WHERE oracle_maintained='Y';

-- Nonoracle maintained users
SELECT COUNT(*) AS non_oracle_maintained_users
FROM dba_users
WHERE oracle_maintained='N';

-- Lock SYS external connections (SPFILE)
ALTER SYSTEM SET remote_login_passwordfile = NONE SCOPE=spfile;

-- Expired passwords
SELECT COUNT(*) AS expired_password_accounts
FROM dba_users
WHERE account_status LIKE '%EXPIRE%';
