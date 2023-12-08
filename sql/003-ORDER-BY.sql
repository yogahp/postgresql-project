-- Using PostgreSQL ORDER BY clause to sort rows by one column
SELECT
	first_name,
	last_name
FROM
	customer
ORDER BY
	first_name ASC;
	
SELECT
	first_name,
	last_name
FROM
	customer
ORDER BY
	first_name;
	
-- Using PostgreSQL ORDER BY clause to sort rows by one column in descending order
SELECT
       first_name,
       last_name
FROM
       customer
ORDER BY
       last_name DESC;
       
-- Using PostgreSQL ORDER BY clause to sort rows by multiple columns
SELECT
	first_name,
	last_name
FROM
	customer
ORDER BY
	first_name ASC,
	last_name DESC;
	
-- Using PostgreSQL ORDER BY clause to sort rows by expressions
SELECT 
	first_name,
	LENGTH(first_name) len
FROM
	customer
ORDER BY 
	len DESC;
	
-- PostgreSQL ORDER BY clause and NULL
-- create a new table
CREATE TABLE sort_demo(
	num INT
);

-- insert some data
INSERT INTO sort_demo(num)
VALUES(1),(2),(3),(null);

SELECT num
FROM sort_demo
ORDER BY num;

SELECT num
FROM sort_demo
ORDER BY num NULLS LAST;

SELECT num
FROM sort_demo
ORDER BY num NULLS FIRST;

SELECT num
FROM sort_demo
ORDER BY num DESC;

SELECT num
FROM sort_demo
ORDER BY num DESC NULLS LAST;