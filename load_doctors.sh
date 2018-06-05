#!/bin/bash

psql -U postgres -h db.fivetwentyseven.com -f create.sql -d health
psql -U postgres -h db.fivetwentyseven.com -c "COPY nppes FROM STDIN WITH CSV HEADER DELIMITER ',' QUOTE '\"'" < "data/npidata_pfile_20050523-20180513.csv" health
psql -U postgres -h db.fivetwentyseven.com -d health -c "CREATE INDEX ON nppes(provider_last_name_legal_name);
CREATE INDEX ON nppes(provider_first_name);
CREATE INDEX ON nppes(provider_business_practice_location_address_state_name);"