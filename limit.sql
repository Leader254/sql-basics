-- PostgreSQL LIMIT - constraints the number of rows returned by a query
-- OFFSET - used to skip a number of rows before returning the row count
-- rows_to_skip => row_count - use the ORDER BY clause to control the row order.
SELECT 
	select_list
FROM
	table_name
ORDER BY
	sort_expression
LIMIT
	row_count OFFSET rows_to_skip;
	
SELECT 
	*
FROM
	film
ORDER BY
	film_id
LIMIT 5 OFFSET 5;

-- we often use LIMIT to select rows with the highest or lowest values from a table
SELECT 
  film_id, 
  title, 
  rental_rate 
FROM 
  film 
ORDER BY 
  rental_rate DESC 
LIMIT 
  10;
  
-- PostgreSQL FETCH - used to retrieve a portion of rows returned by a query
 SELECT
    film_id,
    title
FROM
    film
ORDER BY
    title 
FETCH FIRST ROW ONLY; 
  
SELECT
    film_id,
    title
FROM
    film
ORDER BY
    title 
FETCH FIRST 5 ROW ONLY;
  
-- PostgreSQL IN - used to check if a value matches any value in a list
  value IN (value1,value2,...)
  
-- Using IN with dates
SELECT
	payment_id,
	amount,
	payment_date
FROM
	payment
WHERE payment_date::date IN ('2007-02-15', '2007-02-16');
 
-- NOT IN Operator - negation of IN
value NOT IN (value1, value2, ...)
SELECT 
	payment_id,
	amount,
	payment_date
FROM 
	payment
WHERE 
	payment_id NOT IN('1','2','3')
LIMIT 10;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  