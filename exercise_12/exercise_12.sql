-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT city.city, SUM(payment.amount)
FROM payment
LEFT JOIN rental on payment.rental_id = rental.rental_id
LEFT JOIN inventory on inventory.inventory_id = rental.inventory_id
LEFT JOIN film on film.film_id = inventory.film_id
LEFT JOIN customer on customer.customer_id = payment.customer_id
LEFT JOIN address on address.address_id = customer.address_id
LEFT JOIN city on address.city_id = city.city_id
GROUP by city.city
ORDER by SUM DESC
LIMIT 10