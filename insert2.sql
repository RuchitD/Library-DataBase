-- SCHEMA: dhokar

-- DROP SCHEMA dhokar ;

SET search_path TO dhokar, public;

INSERT INTO dhokar.edition (ASIN, title, name, publisher, pubdate, pages, format, language, price)VALUES
			('0593318179','Klara and the Sun',' Kazuo Ishiguro','Knopf','March 2 2021','320','Hardcover','English','16.39'),
			('1477825576','My Sisters Grave','Tracy Crosswhite','Thomas & Mercer','November 1 2014','410','Paperback','English','7.49');


INSERT INTO dhokar.reviewer (name,country) VALUES
	 	   ('Sam','Canada'),
		   ('John','Indonesia');

INSERT INTO dhokar.review (comments, review_date, reviewer_id, reviewedid, rating) VALUES
			('Good','9-3-2021',(SELECT id FROM reviewer WHERE name='Sam'),'0593318179','7'),
			('Perfect','9-2-2021',(SELECT id FROM reviewer WHERE name='John'),'1477825576','10');