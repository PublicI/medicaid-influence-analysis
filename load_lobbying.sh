#!/bin/bash

psql -U postgres -h db.fivetwentyseven.com -f create.sql -d health
psql -U postgres -h db.fivetwentyseven.com -c "COPY nimp_lobbying FROM STDIN WITH CSV HEADER DELIMITER ',' ENCODING 'UTF8'" < "data/nimp_lobbying.csv" health