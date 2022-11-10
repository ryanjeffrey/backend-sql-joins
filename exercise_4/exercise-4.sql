-- find all customers first_name, last_name, address, and city
-- Similar to exercise 3 but with customer, address, city
SELECT first_name, last_name, address, city FROM customer
LEFT JOIN address on customer.address_id = address.address_id
LEFT JOIN city on address.city_id = city.city_id