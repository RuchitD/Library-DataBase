-- SCHEMA: dhokar

-- DROP SCHEMA dhokar ;

SET search_path TO dhokar, public;

UPDATE book
SET ASIN = 'A01B1DNB3C'
WHERE title = 'The Beginning After The End: Early Years, Book 4';

UPDATE book
SET pages = '754'
WHERE ASIN = 'U2723982JF';
	
UPDATE book
SET title = 'A book from 2100'
WHERE ASIN = 'A234567890';

ALTER TABLE dhokar.book RENAME TO edition; 

ALTER TABLE edition ADD PRIMARY KEY (asin); -- adds the primary key

ALTER TABLE edition ADD CHECK (pages>=0); -- ensures that pages can never be negative

ALTER TABLE edition
	ADD COLUMN format varchar(225) DEFAULT 'default' NOT NULL; --this is the format colume 

ALTER TABLE edition
	ADD COLUMN language text DEFAULT 'default'  NOT NULL; -- this adds the language colum 

ALTER TABLE edition add price decimal NOT NULL DEFAULT 0.0; -- Adding in the price column
ALTER TABLE edition ADD CHECK (price>=0); --ensures price is never below 0





CREATE TABLE dhokar.reviewer
(
	id BIGSERIAL PRIMARY KEY NOT NULL, --the id big serial
	name varchar(225) NOT NULL, -- name of reviewer
	country varchar(225) NOT NULL -- country of reviewer

);

CREATE TABLE dhokar.review
(
	id BIGSERIAL PRIMARY KEY NOT NULL, --id generated for the review
	comments varchar(225) NOT NULL, -- comments for review
	review_date date NOT NULL, --review date
	reviewer_id int NOT NULL, -- reviewer id,this is fetched from the previous table
	reviewedid int NOT NULL, -- id of the book that is reviewed
	rating int NOT NULL -- book rating
	
);
	


	
