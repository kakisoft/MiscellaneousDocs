```
create tablespace KAKIP2
datafile 'F:\OracleTablespace\KAKIP2.DBF' size 5m autoextend on
;

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

sqlplus SYSTEM/SYSTEM as SYSDBA
alter pluggable database orclpdb open;
alter session set container = orclpdb;

alter pluggable database orclpdb save state;
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

```