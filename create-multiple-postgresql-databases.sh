#!/bin/bash

set -e
set -u

function create_user_and_database() {
    local dbinfo=$1
    IFS=":" read -r database user password <<< "$dbinfo"

    echo "Creating database '$database' with user '$user' and password '$password'"
    psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
      CREATE USER $user;
      ALTER USER $user WITH ENCRYPTED PASSWORD '$password';
      CREATE DATABASE $database;
      GRANT ALL PRIVILEGES ON DATABASE $database TO $user;
EOSQL
}

if [ -n "$POSTGRES_MULTIPLE_DATABASES" ]; then
	echo "Multiple database creation requested: $POSTGRES_MULTIPLE_DATABASES"
	for db in $(echo $POSTGRES_MULTIPLE_DATABASES | tr ',' ' '); do
		create_user_and_database $db
	done
	echo "Multiple databases created"
fi
