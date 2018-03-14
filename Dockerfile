FROM library/postgres

ENV POSTGRES_DB cashpassport

# init.sql will be called when 
COPY init.sql /docker-entrypoint-initdb.d/