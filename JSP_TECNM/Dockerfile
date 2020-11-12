FROM mysql:latest

ENV MYSQL_DATABASE proyectojsp_tecnm
ENV MYSQL_ROOT_PASSWORD root

COPY ./database/database.sql /docker-entrypoint-initdb.d/database.sql
