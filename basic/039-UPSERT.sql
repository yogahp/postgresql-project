-- The following statement creates a new table called customers to demonstrate the PostgreSQL upsert feature.
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
	customer_id serial PRIMARY KEY,
	name VARCHAR UNIQUE,
	email VARCHAR NOT NULL,
	active bool NOT NULL DEFAULT TRUE
);

-- The following INSERT statement inserts some rows into the customers table.
INSERT INTO 
    customers (name, email)
VALUES 
    ('IBM', 'contact@ibm.com'),
    ('Microsoft', 'contact@microsoft.com'),
    ('Intel', 'contact@intel.com');
    
-- Suppose Microsoft changes the contact email from contact@microsoft.com to hotline@microft.com, we can update it using the UPDATE statement. However, to demonstrate the upsert feature, we use the following INSERT ON CONFLICT statement:
INSERT INTO customers (NAME, email)
VALUES('Microsoft','hotline@microsoft.com') 
ON CONFLICT ON CONSTRAINT customers_name_key 
DO NOTHING;

-- The following statement is equivalent to the above statement but it uses the name column instead of the unique constraint name as the target of the INSERT statement.
INSERT INTO customers (name, email)
VALUES('Microsoft','hotline@microsoft.com') 
ON CONFLICT (name) 
DO NOTHING;

-- Suppose, you want to concatenate the new email with the old email when inserting a customer that already exists, in this case, you use the UPDATE clause as the action of the INSERT statement as follows:
INSERT INTO customers (name, email)
VALUES('Microsoft','hotline@microsoft.com') 
ON CONFLICT (name) 
DO 
   UPDATE SET email = EXCLUDED.email || ';' || customers.email;