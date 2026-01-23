-- Segments count
SELECT COUNT(*) AS total_segments FROM user_segments;

-- Extents/blocks for T1
SELECT segment_name, segment_type, extents, blocks
FROM user_segments
WHERE segment_name = 'T1';

-- Size in MB for T1 (based on blocks * block_size)
-- Note: block size is db_block_size
SHOW PARAMETER db_block_size;

-- Create T2 as copy
CREATE TABLE t2 AS SELECT * FROM t1;

-- Create T3 structure only (no rows)
CREATE TABLE t3 AS SELECT * FROM t1 WHERE 1=2;
