-- Using PostgreSQL GROUP BY without an aggregate function example
SELECT
   customer_id
FROM
   payment
GROUP BY
   customer_id;
   
-- Using PostgreSQL GROUP BY with SUM() function example
SELECT
	customer_id,
	SUM (amount)
FROM
	payment
GROUP BY
	customer_id;
	
SELECT
	customer_id,
	SUM (amount)
FROM
	payment
GROUP BY
	customer_id
ORDER BY
	SUM (amount) DESC;
	
-- Using PostgreSQL GROUP BY clause with the JOIN clause
SELECT
	first_name || ' ' || last_name full_name,
	SUM (amount) amount
FROM
	payment
INNER JOIN customer USING (customer_id)    	
GROUP BY
	full_name
ORDER BY amount DESC;

-- Using PostgreSQL GROUP BY with COUNT() function example
SELECT
	staff_id,
	COUNT (payment_id)
FROM
	payment
GROUP BY
	staff_id;
	
-- Using PostgreSQL GROUP BY with multiple columns
SELECT 
	customer_id, 
	staff_id, 
	SUM(amount) 
FROM 
	payment
GROUP BY 
	staff_id, 
	customer_id
ORDER BY 
    customer_id;
    
-- Using PostgreSQL GROUP BY clause with a date column
SELECT 
	DATE(payment_date) paid_date, 
	SUM(amount) sum
FROM 
	payment
GROUP BY
	DATE(payment_date);
	
