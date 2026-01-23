-- Run as JOHN

-- Create table from DBA_OBJECTS
CREATE TABLE t1 AS SELECT * FROM dba_objects;

-- Check count
SELECT COUNT(*) FROM t1;

-- Repeat inserts to reach 1M+ rows (run multiple times)
INSERT INTO t1 SELECT * FROM t1;
COMMIT;
