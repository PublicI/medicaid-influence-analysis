CREATE TABLE IF NOT EXISTS lobbying (
	jurisdiction text,
	year integer,
	clienteid text,
	client text,
	catcodegroup text,
	catcodeindustry text,
	catcodebusiness text,
	lobbyisteid text,
	lobbyist text,
	affiliate text
);

TRUNCATE lobbying;

GRANT ALL ON TABLE lobbying TO redash;