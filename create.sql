-- SCHEMA: ruchitd

-- DROP SCHEMA ruchitd ;

CREATE SCHEMA IF NOT EXISTS dhokar;
  

SET search_path TO dhokar, public;
CREATE TABLE dhokar.book
(
	ASIN varchar(100),
	title varchar(225),
	name varchar(225),
	publisher varchar(225),
	pubdate date,
	pages integer

);
