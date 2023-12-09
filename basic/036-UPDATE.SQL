-- The following statements create a table called courses and insert some data into it:
DROP TABLE IF EXISTS courses;

CREATE TABLE courses(
	course_id serial primary key,
	course_name VARCHAR(255) NOT NULL,
	description VARCHAR(500),
	published_date date
);

INSERT INTO 
	courses(course_name, description, published_date)
VALUES
	('PostgreSQL for Developers','A complete PostgreSQL for Developers','2020-07-13'),
	('PostgreSQL Admininstration','A PostgreSQL Guide for DBA',NULL),
	('PostgreSQL High Performance',NULL,NULL),
	('PostgreSQL Bootcamp','Learn PostgreSQL via Bootcamp','2013-07-11'),
	('Mastering PostgreSQL','Mastering PostgreSQL in 21 Days','2012-06-30');

SELECT * FROM courses;

-- The following statement uses the UPDATE statement to update the course with id 3. It changes the published_date from NULL to '2020-08-01'.
UPDATE courses
SET published_date = '2020-08-01' 
WHERE course_id = 3;

SELECT * 
FROM courses
WHERE course_id = 3;

-- The following statement updates course id 2. It modifies published_date of the course to 2020-07-01 and returns the updated course.

UPDATE courses
SET published_date = '2020-07-01'
WHERE course_id = 2
RETURNING *;