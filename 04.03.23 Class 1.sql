USE sakila;

SHOW TABLES;

SELECT * from film_text;

SELECT * FROM  sakila ORDER BY added DESC;

SELECT title FROM film_text;

SELECT * FROM film_text where title  = 'ACADEMY DINOSAUR';

SELECT *FROM film_text;

select alias_title as title from film_text;

SELECT film_id as Id_film from film_actor;

SELECT *FROM film_actor;

ALTER TABLE film_actor ADD COLUMN language VARCHAR(255);

SELECT *FROM film_actor;

SELECT *FROM language;

UPDATE film_actor SET name = language;

SELECT *FROM language;

ALTER TABLE language ADD COLUMN LANGUAGE VARCHAR(255);

SELECT *FROM language;

UPDATE language SET LANGUAGE = name language             
UPDATE language
SET LANGUAGE = value
WHERE condition;

SELECT *FROM language;

SELECT *FROM store;

SELECT store_id FROM store;

SELECT *FROM staff;

SELECT staff_id FROM staff;

SELECT *FROM staff;

SELECT first_name FROM staff;

USE BANK;
SELECT * FROM client ORDER BY district_id DESC;


