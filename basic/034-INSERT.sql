-- The following statement creates a new table calledlinksfor the demonstration:
DROP TABLE IF EXISTS links;

CREATE TABLE links (
	id SERIAL PRIMARY KEY,
	url VARCHAR(255) NOT NULL,
	name VARCHAR(255) NOT NULL,
	description VARCHAR (255),
        last_update DATE
);

-- The following statement inserts a new row into the links table:
INSERT INTO links (url, name)
VALUES('https://www.postgresqltutorial.com','PostgreSQL Tutorial');

-- The following SELECT statement shows the contents of the links table:
SELECT	* FROM links;

-- If you want to insert a string that contains a single quote (') such as O'Reilly Media, you have to use an additional single quote (') to escape it. For example:
INSERT INTO links (url, name)
VALUES('http://www.oreilly.com','O''Reilly Media');

-- To insert a date value into a column with the DATE type, you use the date in the format 'YYYY-MM-DD'.
INSERT INTO links (url, name, last_update)
VALUES('https://www.google.com','Google','2013-06-01');

-- To get the last insert id from inserted row, you use the RETURNING clause of the INSERTstatement.
INSERT INTO links (url, name)
VALUES('http://www.postgresql.org','PostgreSQL') 
RETURNING id;