-- WHERE CONDITION - The WHERE clause uses the condition to filter the rows returned from the SELECT clause
SELECT * FROM customer LIMIT 20;
SELECT 
  last_name, 
  first_name 
FROM 
  customer 
WHERE 
  first_name = 'Jamie';
  
 select distinct first_name from customer;
-- Using WHERE clause with an operator
SELECT 
	*
FROM 
	customer
WHERE
	first_name = 'Jamie'
	OR last_name = 'Thompson';
	
-- Using IN to find a list of values
SELECT
*
FROM 
	customer
WHERE
	first_name IN('Ann','Anne','Annie')
	
-- Using the WHERE clause with the LIKE operator
SELECT
*
FROM 
	customer
WHERE
	first_name LIKE 'Ann%'
	
-- The 'Ann%' pattern matches any strings that start with 'Ann'
-- Using the WHERE clause with the BETWEEN operator

SELECT 
	first_name,
	LENGTH(first_name) len
FROM
	customer
WHERE
	first_name LIKE 'A%'
	AND LENGTH(first_name) BETWEEN 3
	AND 5
ORDER BY
	len DESC;

-- Using the WHERE clause with the not equal operator (<>)
-- you can also use != interchangeably with <>
SELECT 
	*
FROM
	customer
WHERE
	first_name LIKE 'Bra%'
	AND last_name <> 'Motley';















	