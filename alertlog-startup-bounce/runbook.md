## Runbook
1) Find alert log trace directory:
- Run diag_and_instance.sql
- Use the Diag Trace path

2) Linux:
- cd <Diag Trace path>
- tail -f alert_<SID>.log

3) In SQL*Plus:
- shutdown abort;
- startup;

4) For bounce (later):
- Keep tail -f running and repeat shutdown/startup.
