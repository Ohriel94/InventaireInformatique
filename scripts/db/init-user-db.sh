#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE oivjs_db;
    CREATE USER oivjs_user WITH ENCRYPTED PASSWORD 'oipass123!';
    GRANT ALL PRIVILEGES ON DATABASE oivjs_db TO oivjs_user;
EOSQL