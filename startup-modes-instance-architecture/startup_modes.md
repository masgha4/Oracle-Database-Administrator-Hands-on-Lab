Commands Practiced (SQL*Plus)
- `STARTUP NOMOUNT;`
- `ALTER DATABASE MOUNT;`
- `ALTER DATABASE OPEN;`

What happens
- NOMOUNT: reads parameter file, allocates SGA, starts background processes
- MOUNT: reads control files
- OPEN: opens datafiles + redo logs
