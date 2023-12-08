-- Assigning a column alias to a column example
SELECT 
   first_name, 
   last_name
FROM customer;

SELECT 
   first_name, 
   last_name AS surname
FROM customer;

SELECT 
   first_name, 
   last_name surname
FROM customer;

-- Assigning a column alias to an expression example
SELECT 
   first_name || ' ' || last_name 
FROM 
   customer;
   
SELECT
    first_name || ' ' || last_name AS full_name
FROM
    customer;
    
-- Column aliases that contain spaces
SELECT
    first_name || ' ' || last_name "full name"
FROM
    customer;