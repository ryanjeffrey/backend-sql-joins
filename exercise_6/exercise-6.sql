-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
SELECT title FROM customer
LEFT JOIN rental on customer.customer_id = rental.customer_id
LEFT JOIN inventory on rental.inventory_id = inventory.inventory_id
LEFT JOIN film on inventory.film_id = film.film_id
WHERE first_name = 'Roberta'