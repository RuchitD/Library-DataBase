-- SCHEMA: dhokar

-- DROP SCHEMA dhokar ;

SET search_path TO dhokar, public;

--duplicate ASIN
INSERT INTO dhokar.book values('B01B1DNB3C','The Beginning After The End: Early Years, Book 4','TurtleMe','Self','2016-01-24','193');
--Non positive pages
INSERT INTO dhokar.book values('U2723982JF','The Beginning After the End: FAKE TITLE, Book 22','TurtleMe','Self','2054-07-20','0');
--Null Title
INSERT INTO dhokar.book values('A234567890','NULL','Not a person','Self','2100-07-20','52');