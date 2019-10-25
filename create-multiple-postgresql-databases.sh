#!/bin/bash

set -e
set -u

function create_databases() {
	local database=$1
	local user=$2 
	
	echo "  Creating user and database '$database'"
	psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	    CREATE DATABASE $database;
	    GRANT ALL PRIVILEGES ON DATABASE $database TO $user;
EOSQL
}

if [ -n "$POSTGRES_MULTIPLE_DATABASES" ]; then
 #       echo "User $POSTGRES_USER creation..."
#	psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
#	     CREATE USER $POSTGRES_USER WITH ENCRYPTED PASSWORD $POSTGRES_PASSWORD;
#EOSQL

	echo "Multiple database creation requested: $POSTGRES_MULTIPLE_DATABASES"
	for db in $(echo $POSTGRES_MULTIPLE_DATABASES | tr ',' ' '); do
		create_databases $db $POSTGRES_USER 
	done
	echo "Multiple databases created"
fi
