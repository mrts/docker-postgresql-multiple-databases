#!/bin/bash

set -e
set -u

function create_user_and_database() {
	local database=$1
	local user=$2 
	local password=$3
	
	echo "  Creating user and database '$database'"
	psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	    CREATE USER $user WITH ENCRYPTED PASSWORD $password;
	    CREATE DATABASE $database;
	    GRANT ALL PRIVILEGES ON DATABASE $user TO $database;
EOSQL
}

if [ -n "$POSTGRES_MULTIPLE_DATABASES" ]; then
	echo "Multiple database creation requested: $POSTGRES_MULTIPLE_DATABASES"
	for db in $(echo $POSTGRES_MULTIPLE_DATABASES | tr ',' ' '); do
		create_user_and_database $db $POSTGRES_USER $POSTGRES_PASSWORD
	done
	echo "Multiple databases created"
fi
