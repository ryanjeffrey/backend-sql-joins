-- find all film titles that an actor with the last_name Davis appears in
-- Similar to exercise 3 but with actor, film_actor, film
SELECT title FROM actor
LEFT JOIN film_actor on actor.actor_id = film_actor.actor_id
LEFT JOIN film on film_actor.film_id = film.film_id
WHERE last_name = 'Davis'