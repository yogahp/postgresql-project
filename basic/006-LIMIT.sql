-- Using PostgreSQL LIMIT to constrain the number of returned rows example
SELECT
	film_id,
	title,
	release_year
FROM
	film
ORDER BY
	film_id
LIMIT 5;

-- Using PostgreSQL LIMIT with OFFSET example
SELECT
	film_id,
	title,
	release_year
FROM
	film
ORDER BY
	film_id
LIMIT 4 OFFSET 3;

-- Using PostgreSQL LIMIT OFFSSET to get top / bottom N rows
SELECT
	film_id,
	title,
	rental_rate
FROM
	film
ORDER BY
	rental_rate DESC
LIMIT 10;

