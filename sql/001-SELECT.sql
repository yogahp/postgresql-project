-- Using PostgreSQL SELECT statement to query data from one column example
SELECT first_name FROM customer;

-- Using PostgreSQL SELECT statement to query data from multiple columns example
SELECT
   first_name,
   last_name,
   email
FROM
   customer;
   
-- Using PostgreSQL SELECT statement to query data from all columns of a table example
SELECT * FROM customer;

-- Using PostgreSQL SELECT statement with expressions example
SELECT 
   first_name || ' ' || last_name,
   email
FROM 
   customer;
   
-- Using PostgreSQL SELECT statement with expressions example
SELECT 5 * 3;
