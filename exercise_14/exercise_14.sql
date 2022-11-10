-- the average film length by category
-- include the category name and avg length
SELECT category.name, AVG(film.length)
FROM category
LEFT JOIN film_category on film_category.category_id = category.category_id
LEFT JOIN film on film_category.film_id = film.film_id
GROUP by category.name