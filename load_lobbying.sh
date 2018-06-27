#!/bin/bash

psql -U postgres -h db.fivetwentyseven.com -f create_lobbying.sql -d health
psql -U postgres -h db.fivetwentyseven.com -c "COPY lobbying FROM STDIN WITH CSV HEADER DELIMITER ',' ENCODING 'UTF8'" < "data/lobbying.csv" health
psql -U postgres -h db.fivetwentyseven.com -d health -c "CREATE INDEX ON lobbying(year);
CREATE INDEX ON lobbying(jurisdiction);
CREATE INDEX ON lobbying(client);
CREATE INDEX ON lobbying(catcodebusiness);
CREATE INDEX ON lobbying(lobbyist);"