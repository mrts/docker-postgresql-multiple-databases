# Using multiple databases with official PostgreSQL Docker image

The [official recommendation](https://hub.docker.com/_/postgres/) for creating
multiple databases is as follows:

*If you would like to do additional initialization in an image derived from
this one, add one or more `*.sql`, `*.sql.gz`, or `*.sh` scripts under
`/docker-entrypoint-initdb.d` (creating the directory if necessary). After the
entrypoint calls `initdb` to create the default `postgres` user and database,
it will run any `*.sql` files and source any `*.sh` scripts found in that
directory to do further initialization before starting the service.*

This directory contains a script to create multiple databases using that
mechanism.

## Usage

Clone the repository, mount it's directory into the official Docker image and
declare database names separated by commas in `POSTGRES_MULTIPLE_DATABASES`
environment variable as follows (`docker-compose` syntax):

    myapp-postgresql:
        image: postgres:9.6.2
        volumes:
            - ../docker-posgresql-multiple-databases:/docker-entrypoint-initdb.d
        environment:
            - POSTGRES_MULTIPLE_DATABASES=db1,db2
            - POSTGRES_USER=myapp
            - POSTGRES_PASSWORD=
