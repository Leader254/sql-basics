SELECT first_name, last_name, email FROM customer ORDER BY first_name LIMIT 10;

SELECT * FROM customer LIMIT 10;

-- Concatinate two column using union and use Alias to set the name of the joined columns
-- Use double quotes (“) to surround column aliases that contain spaces.
SELECT 
   first_name || ' ' || last_name AS "full name",
   email
FROM 
   customer
   LIMIT 10;
   
  
-- ORDER BY CLAUSE - ASC is the defult ordering clause
SELECT 
	first_name,
	LENGTH(first_name) len,
	last_name
FROM
	customer
ORDER BY
	len ASC
	LIMIT 10;
	
CREATE TABLE sort_demo(num INT)

INSERT INTO sort_demo(num)
VALUES(1),(2),(3),(null);

-- Nulls first and Nulls last
SELECT 
  num 
FROM 
  sort_demo 
ORDER BY 
  num NULLS FIRST;

-- ORDER BY clause with DESC option uses the NULLS FIRST by default
SELECT 
  num 
FROM 
  sort_demo 
ORDER BY 
  num DESC;