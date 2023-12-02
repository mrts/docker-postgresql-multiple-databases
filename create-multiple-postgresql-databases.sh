#!/bin/bash

set -e
set -u

function create_user_and_database() {
	local database=$1
    local password=$2
	echo "  Creating user and database '$database'"
	psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	    CREATE USER $database WITH PASSWORD '$password';
	    CREATE DATABASE $database;
	    GRANT ALL PRIVILEGES ON DATABASE $database TO $database;
EOSQL
}

if [ -n "$POSTGRES_MULTIPLE_DATABASES" ]; then
	echo "Multiple database creation requested: $POSTGRES_MULTIPLE_DATABASES"
	for db in $(echo $POSTGRES_MULTIPLE_DATABASES | tr ',' ' '); do
        IFS=':' read -ra PART <<< "$db"
        db_name="${PART[0]}"
        db_pass="${PART[1]}"
		create_user_and_database $db_name $db_pass
	done
	echo "Multiple databases created"
fi