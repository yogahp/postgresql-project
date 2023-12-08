-- PostgreSQL LEFT JOIN examples
SELECT
	film.film_id,
	title,
	inventory_id
FROM
	film
LEFT JOIN inventory 
    ON inventory.film_id = film.film_id
ORDER BY title;

SELECT
	film.film_id,
	film.title,
	inventory_id
FROM
	film
LEFT JOIN inventory 
   ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL
ORDER BY title;

SELECT
	f.film_id,
	title,
	inventory_id
FROM
	film f
LEFT JOIN inventory i
   ON i.film_id = f.film_id
WHERE i.film_id IS NULL
ORDER BY title;

SELECT
	f.film_id,
	title,
	inventory_id
FROM
	film f
LEFT JOIN inventory i USING (film_id)
WHERE i.film_id IS NULL
ORDER BY title;