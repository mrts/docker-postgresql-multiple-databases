#!/bin/bash

set -e
set -u

containsElement () {
    IFS=$'\n'
    local array=$1 val=$2 result=0
    for var in $array; do
        if [[ "$var" == "$val" ]]; then
            result=1
            break
        fi
   done
   echo "$result"
}

function create_user_and_database() {
	local database=$1 user=$2 password=$3
	local query_users="select rolname from pg_roles;" query_databases="select datname from pg_database;"
	local roles=$(echo "$query_users" | psql -tA)
	local databases=$(echo "$query_databases" | psql -Aqt)
    user_exist=$(containsElement "$roles" "$user")
    database_exist=$(containsElement "$databases" "$database")

    if [[ "$user_exist" == 1 ]]; then
        echo "User '$user' exist. Skipping"
    else
        echo "Create User '$user'.";
        psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" \
            -c "CREATE USER $user WITH PASSWORD '$password'";
    fi
    if [[ "$database_exist" == 1 ]]; then
        echo "Database '$database' exists. Skipping."
    else
        echo "Create Database '$database'"
        psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" \
            -c "CREATE DATABASE $database;"
    fi
    psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" \
        -c "GRANT ALL PRIVILEGES ON DATABASE $database TO $user;"
}

if [ -n "$POSTGRES_MULTIPLE_DATABASES" ]; then
	echo "Multiple database creation requested: $POSTGRES_MULTIPLE_DATABASES"
	IFS=', ' read -r -a databases <<< "$POSTGRES_MULTIPLE_DATABASES"
	IFS=', ' read -r -a users <<< "$POSTGRES_MULTIPLE_USERS"
	IFS=', ' read -r -a passwords <<< "$POSTGRES_MULTIPLE_PASSWORDS"
	for index in ${!databases[@]}; do
        if [[ $index < ${#databases[*]} && $index < ${#users[*]} && $index < ${#passwords[*]} ]] ; then
              create_user_and_database "${databases[index]//[\'\"\`]/}" "${users[index]//[\'\"\`]/}" "${passwords[index]//[\'\"\`]/}"
        else
            echo "DATABASE '${databases[index]}' OR USER '${users[index]}' EMPTY"
        fi
	done
	echo "Multiple databases created"
fi
