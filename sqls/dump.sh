#!bin/bash
DATE=$(date +"%Y-%m-%d")
pg_dump backend  > ~/app/backend/sqls/dump_$DATE.sql
