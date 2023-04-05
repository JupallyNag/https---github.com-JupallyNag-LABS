USE sakila;

SELECT * FROM film_actor;
SELECT * FROM actor;

# 1 Query
# List all films whose length is longer than the average of all the films.

SELECT first_name 
FROM actor 
WHERE actor_id IN (SELECT film_id 
				   FROM film_actor
				   WHERE actor_id =1);

SELECT title 
FROM film
WHERE length > ( SELECT AVG(length)
                FROM film) ; 


# 2 Query
# How many copies of the film Hunchback Impossible exist in the inventory system?

SELECT title, count(inventory_id)
FROM film film
JOIN inventory Inven
ON film.film_id = Inven.film_id
WHERE title = "Hunchback Impossible";


# 3 Query
# Use subqueries to display all actors who appear in the film Alone Trip.

SELECT first_name,last_name 
FROM actor 
WHERE actor_id IN ( SELECT actor_id 
					FROM film_actor 
                    WHERE film_id IN 
				  ( SELECT film_id FROM filM WHERE title = " Alone Trip "));
                  
SELECT * FROM film;
SELECT * FROM actor;

# 4 Query
# Sales have been lagging among young families, and you wish to target all family movies for a promotion.
# Identify all movies categorized as family films.

SELECT * FROM category;

SELECT film_id 
FROM film_category 
WHERE film_id IN ( SELECT film_id 
					FROM film_category 
                    WHERE film_id IN 
				  ( SELECT film_id FROM filM WHERE title = "film_category"));
