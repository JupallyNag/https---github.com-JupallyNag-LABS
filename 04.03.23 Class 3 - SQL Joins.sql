# 1) Which actor has appeared in the most films?

USE sakila;
SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film_actor;

SELECT * FROM actor JOIN film_actor ON actor.first_name = film_actor.actor_id;


SELECT first_name, count(actor_id)
FROM actor
GROUP BY first_name
ORDER BY count(actor_id) DESC
LIMIT 1;


SELECT * FROM actor;
ALTER TABLE actor ADD actor_name varchar(20);
UPDATE actor SET actor_name = concat(first_name, "  " , last_name);

# 2) Most active customer (the customer that has rented the most number of films)

SELECT * FROM rental;

SELECT customer_id, count(*) as Total_Rentals
FROM rental
GROUP BY customer_id
ORDER BY Total_Rentals DESC LIMIT 1;


# 3) List number of films per category.

SELECT * FROM category;
