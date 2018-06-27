#!/bin/bash

psql -U postgres -h db.fivetwentyseven.com -f create_doctors.sql -d health
psql -U postgres -h db.fivetwentyseven.com -c "COPY committee_members FROM STDIN WITH CSV HEADER DELIMITER ','" < "data/committee_members.csv" health
psql -U postgres -h db.fivetwentyseven.com -d health -c "UPDATE committee_members
SET first_name = TRIM(UPPER(first_name)),
    last_name = TRIM(UPPER(last_name)),
    state_name = TRIM(UPPER(state_name)),
    degree_1 = TRIM(UPPER(degree_1)),
    degree_2 = TRIM(UPPER(degree_2));"
psql -U postgres -h db.fivetwentyseven.com -d health -c "CREATE INDEX ON committee_members(first_name);
CREATE INDEX ON committee_members(last_name);
CREATE INDEX ON committee_members(state_name);
CREATE INDEX ON committee_members(degree_1);
CREATE INDEX ON committee_members(degree_2);"
psql -U postgres -h db.fivetwentyseven.com -c "COPY nppes FROM STDIN WITH CSV HEADER DELIMITER ',' QUOTE '\"'" < "data/npidata_pfile_20050523-20180513.csv" health
psql -U postgres -h db.fivetwentyseven.com -d health -c "UPDATE committee_members
SET provider_first_name = TRIM(UPPER(provider_first_name)),
    provider_last_name_legal_name = TRIM(UPPER(provider_last_name_legal_name)),
    provider_business_practice_location_address_state_name = TRIM(UPPER(provider_business_practice_location_address_state_name));"
psql -U postgres -h db.fivetwentyseven.com -d health -c "CREATE INDEX ON nppes(provider_last_name_legal_name);
CREATE INDEX ON nppes(provider_first_name);
CREATE INDEX ON nppes(provider_business_practice_location_address_state_name);"