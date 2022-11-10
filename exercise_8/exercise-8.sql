-- find all film titles rented out by customers who live in the country of Peru
-- Similar to exercise 7 with an additional join to get country name
SELECT title FROM customer
LEFT JOIN address on customer.address_id = address.address_id
LEFT JOIN city on address.city_id = city.city_id
LEFT JOIN country on city.country_id = country.country_id
LEFT JOIN rental on customer.customer_id = rental.customer_id
LEFT JOIN inventory on rental.inventory_id = inventory.inventory_id
LEFT JOIN film on inventory.film_id = film.film_id
WHERE country = 'Peru'