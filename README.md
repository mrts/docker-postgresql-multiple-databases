# Using multiple databases with the official PostgreSQL Docker image

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

### By mounting a volume

Clone the repository, mount its directory as a volume into
`/docker-entrypoint-initdb.d` and declare database names separated by commas in
`POSTGRES_MULTIPLE_DATABASES` environment variable as follows
(`docker-compose` syntax):

    myapp-postgresql:
        image: postgres:9.6.2
        volumes:
            - ../docker-postgresql-multiple-databases:/docker-entrypoint-initdb.d
        environment:
            - POSTGRES_MULTIPLE_DATABASES=db1,db2
            - POSTGRES_USER=myapp
            - POSTGRES_PASSWORD=

### By building a custom image

Clone the repository, build and push the image to your Docker repository,
for example for Google Private Repository do the following:

    docker build --tag=eu.gcr.io/your-project/postgres-multi-db .
    gcloud docker -- push eu.gcr.io/your-project/postgres-multi-db

You still need to pass the `POSTGRES_MULTIPLE_DATABASES` environment variable
to the container:

    myapp-postgresql:
        image: eu.gcr.io/your-project/postgres-multi-db
        environment:
            - POSTGRES_MULTIPLE_DATABASES=db1,db2
            - POSTGRES_USER=myapp
            - POSTGRES_PASSWORD=

### Non-standard database names

If you need to use non-standard database names (hyphens, uppercase letters etc), quote them in `POSTGRES_MULTIPLE_DATABASES`:

        environment:
            - POSTGRES_MULTIPLE_DATABASES="test-db-1","test-db-2"
