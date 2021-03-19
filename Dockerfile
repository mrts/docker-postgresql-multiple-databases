FROM postgres:12.0
COPY create-multiple-postgresql-databases.sh /docker-entrypoint-initdb.d/
