FROM library/postgres:9.4

ENV POSTGRES_DB cashpassport

# init.sql will be called when container is first run
COPY init.sql /docker-entrypoint-initdb.d/