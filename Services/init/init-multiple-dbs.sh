#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE "auth-db";
    CREATE DATABASE "routes-db";
    CREATE DATABASE "payments-db";
    CREATE DATABASE "pessoas-db";
EOSQL
