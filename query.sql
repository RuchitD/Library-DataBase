-- SCHEMA: dhokar

-- DROP SCHEMA dhokar ;
SET search_path TO dhokar, public; -- Looks for all publishers 
SELECT publisher
	FROM dhokar.book;
	
SELECT title,pages -- Lists the pages of all books by TurtleMe
FROM dhokar.book
WHERE name = 'TurtleMe';
	
SELECT name --Lists all books from 2021
FROM dhokar.book
WHERE EXTRACT(year FROM pubdate)='2021'; 