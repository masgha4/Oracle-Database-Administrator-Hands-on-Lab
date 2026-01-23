# Oracle DBA Hands-On Lab – Week 15 (Oracle 19c)

This repository contains my hands-on Oracle DBA lab work (Oracle 19c) completed in my own database environment.  
The lab focuses on real DBA administrative tasks, including database startup/shutdown, tablespace & datafile management, user creation & privileges, memory/parameter tuning, listener/service configuration, and segment/extent analysis.

Goal: Build practical DBA skills by performing tasks using SQL*Plus and Oracle dynamic performance views.

---

Lab Tasks Completed

1) Database Startup/Shutdown + Alert Log Monitoring
- Started the database while monitoring alert log activity using V$DIAG_INFO
- Performed shutdown/startup operations and validated behavior in the alert log

---

2) Tablespace & Datafile Administration
- Listed all tablespaces using V$TABLESPACE
- Listed all datafiles and displayed file sizes in MB/GB using DBA_DATA_FILES
- Resized datafiles to the nearest 1GB
- Increased TEMP tablespace tempfile size to 1GB using DBA_TEMP_FILES

---

3) Tablespace + User Provisioning (Real DBA Workflow)
- Created new tablespace JohnTBS (1GB datafile)
- Created user John
- Granted essential privileges (connect/resource/unlimited tablespace + object creation privileges)
- Verified user's default & temporary tablespaces using DBA_USERS
- Changed John's default tablespace to JohnTBS
- Granted DBA role to John

---

4) Oracle Instance Parameters & Memory Updates (SGA/PGA/FRA)
- Checked total parameters using V$PARAMETER
- Updated key instance parameters including:
  - SGA_TARGET
  - SGA_MAX_SIZE
  - PGA_AGGREGATE_TARGET
  - SESSIONS
  - PROCESSES
  - DB_RECOVERY_FILE_DEST_SIZE (FRA sizing)
- Created a PFILE from SPFILE
- Identified SPFILE/PFILE locations with SHOW PARAMETER

Additional tuning tasks performed:
- SORT_AREA_SIZE (bytes equivalent for 128MB)
- SHARED_POOL_RESERVED_SIZE
- JAVA_POOL_SIZE
- Session tuning: SESSION_CACHED_CURSORS
- Verified parameters using SHOW PARAMETER

---

5) Database Services + Listener Administration
- Checked SERVICE_NAMES parameter and existing services
- Added a new service to SERVICE_NAMES while keeping existing services
- Verified listener status and restarted listener when needed using:
  - LSNRCTL STATUS
  - LSNRCTL STOP / LSNRCTL START
- Verified service registration and used ALTER SYSTEM REGISTER when needed

---

6) Startup Modes + Control File Understanding
- Checked database instance status using V$INSTANCE
- Practiced startup modes:
  - STARTUP NOMOUNT
  - ALTER DATABASE MOUNT
  - ALTER DATABASE OPEN
- Documented what happens in each stage (IDLE, NOMOUNT, MOUNT, OPEN)
- Verified listener port (default: 1521)

---

7) Schema Object + Segment/Extent Growth Lab (1M+ Rows)
- Created a table T1 in John schema using:
  - CREATE TABLE T1 AS SELECT * FROM DBA_OBJECTS;
- Expanded T1 to 1M+ rows using repeated inserts + commit
- Checked segment count in John schema using USER_SEGMENTS
- Verified extent information and table segment details for T1

---

Key Oracle Views Used
- V$DIAG_INFO
- V$TABLESPACE
- DBA_DATA_FILES
- DBA_TEMP_FILES
- DBA_USERS
- V$PARAMETER
- V$INSTANCE

---

Tools & Environment
- Oracle Database 19c
- SQL*Plus / SQL Developer (query execution)
- Linux navigation for Oracle diagnostic logs

---

This project demonstrates hands-on experience with:
- Oracle instance startup/shutdown operations & alert log tracking
- Tablespace/datafile/tempfile management
- User provisioning + privilege administration
- Parameter tuning (SGA/PGA/FRA/session/process limits)
- Listener/service configuration troubleshooting
- Storage behavior via segments & extents (real performance foundations)

---

Author
Muhammad Wahab Asghar
Aspiring Oracle DBA | Oracle 19c | SQL | Administration | Troubleshooting  
LinkedIn: www.linkedin.com/in/mwahabasghar

