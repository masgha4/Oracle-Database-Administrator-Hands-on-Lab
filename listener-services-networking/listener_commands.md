Listener commands
- `lsnrctl status`
- `lsnrctl stop`
- `lsnrctl start`

Notes
- Default listener port is typically 1521
- If the service does not show up, run:
  - `ALTER SYSTEM REGISTER;`

TNS_ADMIN
TNS_ADMIN is the directory path Oracle client uses to locate network config files like:
- tnsnames.ora
- sqlnet.ora
- listener.ora
