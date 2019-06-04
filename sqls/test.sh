#!bin/bash
DATE=$(date +"%Y-%m-%d")
pg_dump myproject  > ~/app/backend/sqls/dump_$DATE.sql
