-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10
SELECT film.title, count(rental_id)
FROM film
LEFT JOIN inventory on film.film_id = inventory.film_id
LEFT JOIN rental on inventory.inventory_id = rental.inventory_id
LEFT JOIN film_category on film_category.film_id = film.film_id
GROUP by film.film_id
ORDER by count DESC
LIMIT 10