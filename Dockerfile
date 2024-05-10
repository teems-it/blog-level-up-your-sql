FROM postgres:16

ENV POSTGRES_USER=levelup
ENV POSTGRES_PASSWORD=sql
ENV POSTGRES_DB=levelupsql

RUN mkdir /data

COPY cars.csv /data/cars.csv
COPY init.sql /docker-entrypoint-initdb.d/init.sql
