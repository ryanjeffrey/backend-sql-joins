-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT country.country, AVG(payment.amount)
FROM payment
LEFT JOIN rental on payment.rental_id = rental.rental_id
LEFT JOIN inventory on inventory.inventory_id = rental.inventory_id
LEFT JOIN film on film.film_id = inventory.film_id
LEFT JOIN customer on customer.customer_id = payment.customer_id
LEFT JOIN address on address.address_id = customer.address_id
LEFT JOIN city on address.city_id = city.city_id
LEFT JOIN country on country.country_id = city.country_id
GROUP by country.country
ORDER by AVG DESC
LIMIT 10