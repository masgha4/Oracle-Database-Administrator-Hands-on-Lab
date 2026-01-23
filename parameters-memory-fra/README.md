Instance Parameters, Memory Tuning & FRA (Oracle 19c)

Covered
- Total parameters in V$PARAMETER 
- Set SGA_TARGET 1G 
- Set SGA_MAX_SIZE 2G (SPFILE) 
- Set PGA_AGGREGATE_TARGET 1G 
- Set SESSIONS 1000 (SPFILE)
- Set PROCESSES 750 (SPFILE) 
- Create PFILE from SPFILE + show location 
- FRA size show + set to 12G 
- SORT_AREA_SIZE = 128MB bytes 
- SHARED_POOL_RESERVED_SIZE = 56M (SPFILE) 
- Show DB_BLOCK_SIZE 
- JAVA_POOL_SIZE = 56M 
- SESSION_CACHED_CURSORS = 100
- DB bounce while watching alert log

Deliverables
- Changes: parameter_changes.sql
- Verification: verification.sql
