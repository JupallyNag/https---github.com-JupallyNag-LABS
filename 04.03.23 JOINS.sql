use sakila;

select* from film_actor;
select * from actor;

SELECT ac.first_name,ac.last_name,count(film_id) AS count FROM actor AS ac
INNER JOIN film_actor AS film_ac
ON ac.actor_id=film_ac.actor_id
GROUP BY film_ac.actor_id
ORDER BY count DESC
LIMIT 1;

# 2 QUERY
# Most active customer (the customer that has rented the most number of films)

SELECT c.first_name,c.last_name,count(*) AS Total FROM customer AS c
INNER JOIN  rental AS r
ON c.customer_id=r.customer_id
GROUP BY c.customer_id
ORDER BY total DESC
LIMIT 1;

# 3 QUERY
# List number of films per category.

SELECT count(film_id),c.NAME FROM film_category AS film_ca
INNER JOIN category AS c
ON film_ca.category_id=c.category_id
ORDER BY c.category_id;

# 4 QUERY
# Display the first and last names, as well as the address, of each staff member.

SELECT staff.first_name,staff.last_name,address.address FROM staff
INNER JOIN address
ON staff.address_id=address.address_id;


# 5 QUERY
# Get films titles where the film language is either English or italian, and whose titles starts with letter "M" , sorted by title descending.

SELECT film.title,LANGUAGE.NAME FROM film
INNER JOIN LANGUAGE
ON film.language_id=LANGUAGE.language_id
WHERE title LIKE 'E%'
ORDER BY title DESC;

# 6 QUERY
# Display the total amount rung up by each staff member in August of 2005.

SELECT staff.first_name,staff.last_name,sum(amount) FROM staff
LEFT JOIN payment
ON staff.staff_id=payment.staff_id
WHERE payment.payment_date BETWEEN '20050801' AND '20050830'
GROUP BY payment.staff_id;

# 7 QUERY
# List each film and the number of actors who are listed for that film.

SELECT film.title,count(actor_id) AS total FROM film
INNER JOIN film_actor
ON film.film_id=film_actor.film_id
GROUP BY film.film_id
ORDER BY total DESC
LIMIT 10;

# 8 QUERY
# Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name.

SELECT cu.first_name,cu.last_name,sum(amount) FROM customer AS cu
INNER JOIN payment AS p
ON cu.customer_id=p.customer_id
GROUP BY p.customer_id
ORDER BY cu.last_name ASC
LIMIT 100;

# 9 Query
#  Write sql statement to check if you can find any actor who never particiapted in any film.

SELECT actor.first_name,actor.last_name FROM actor
LEFT JOIN film_actor
ON actor.actor_id=film_actor.actor_id
WHERE actor.actor_id IS NULL;

# 10 QUERY 
# Get the addresses that have NO customers, and ends with the letter "e"

SELECT address.address FROM address
LEFT JOIN customer
ON address.address_id=customer.address_id
WHERE address2 IS NULL AND address LIKE '%e';

