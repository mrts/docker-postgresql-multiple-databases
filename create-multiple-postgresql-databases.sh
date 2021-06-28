#!/bin/bash

set -e
set -u

function create_user_and_database() {
	local database=$1
	echo "  Creating user and database '$database'"
	psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "postgres" <<-EOSQL
	    SELECT 'CREATE USER ' || LOWER(TRIM('$database')) AS create_user_query WHERE NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = LOWER(TRIM('$database')));\gexec
	    SELECT 'CREATE DATABASE ' || LOWER(TRIM('$database')) || ' WITH OWNER "$POSTGRES_USER" ENCODING "UTF8" LC_COLLATE = "en_US.UTF-8" LC_CTYPE = "en_US.UTF-8" TEMPLATE="template0"' AS create_table_query WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = LOWER(TRIM('$database')));\gexec
	    GRANT ALL PRIVILEGES ON DATABASE $database TO $database;
EOSQL
}

if [ -n "$POSTGRES_MULTIPLE_DATABASES" ]; then
	echo "Multiple database creation requested: $POSTGRES_MULTIPLE_DATABASES"
	for db in $(echo $POSTGRES_MULTIPLE_DATABASES | tr ',' ' '); do
		create_user_and_database $db
	done
	echo "Multiple databases created"
fi
