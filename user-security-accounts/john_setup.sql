-- Create tablespace (edit file path to match your environment)
CREATE TABLESPACE JOHNTBS
DATAFILE '/u14/oradata/WAHABDB/johntbs01.dbf'
SIZE 1G;

-- Create user
CREATE USER JOHN IDENTIFIED BY abc123;

-- Grants 
GRANT connect,
      resource,
      unlimited tablespace,
      create view,
      create synonym,
      create sequence,
      create role
TO JOHN;

-- Set default tablespace
ALTER USER JOHN DEFAULT TABLESPACE JOHNTBS;

-- Grant DBA 
GRANT dba TO JOHN;
