-- PostgreSQL Joins
-- Joins are used to combine columns from one or more tables based on the values of the common columns between related tables.

CREATE TABLE basket_a (
    a INT PRIMARY KEY,
    fruit_a VARCHAR (100) NOT NULL
);
CREATE TABLE basket_b(
	b INT PRIMARY KEY,
	fruit_b VARCHAR(100) NOT NULL
);

SELECT * FROM basket_a;

INSERT INTO basket_a (a, fruit_a)
VALUES
    (1, 'Apple'),
    (2, 'Orange'),
    (3, 'Banana'),
    (4, 'Cucumber');

INSERT INTO basket_b (b, fruit_b)
VALUES
    (1, 'Orange'),
    (2, 'Apple'),
    (3, 'Watermelon'),
    (4, 'Pear');
	
-- Inner join
SELECT
	a,
	fruit_a,
	b,
	fruit_b
FROM basket_a as ba
INNER JOIN basket_b as bb
	ON fruit_a = fruit_b;
	
-- Table aliases - feature in SQL that allows you to assign a temporary name to a table during the execution of a query
-- Typically, you use table aliases in a query that has a join clause to retrieve data from multiple related tables that share the same column name
SELECT 
  c.customer_id, 
  c.first_name, 
  p.amount, 
  p.payment_date 
FROM 
  customer c 
  INNER JOIN payment p ON p.customer_id = c.customer_id 
ORDER BY 
  p.payment_date DESC;	
  
-- We can use the using keyword if the columns have the same naming
SELECT
	customer_id,
	first_name,
	last_name,
	amount,
	payment_date
FROM
	customer
INNER JOIN payment USING(customer_id)
ORDER BY
	payment_date;
	
-- Inner join
-- First, specify the columns from both tables in the select list of the SELECT clause.
-- Second, specify the main table (table1) from which you want to select data in the FROM clause.
-- Third, specify the second table (table2) you want to join using the INNER JOIN keyword.
-- Finally, define a condition for the join. This condition indicates which column (column_name) in each table should have matching values for the join.

SELECT
	c.customer_id,
	c.first_name || ' ' || c.last_name customer_name,
	s.first_name || ' ' || s.last_name staff_name,
	p.amount,
	p.payment_date
FROM
	customer c
	INNER JOIN payment p USING(customer_id)
	INNER JOIN staff s USING(staff_id)
ORDER BY
	 payment_date;

-- Left join
-- This returns all the rows from the left table and matching rows from the right table. 
-- If a row in the lef ttable does not have a matching row in the right table, columns in the right table will be null.
-- We use the LEFT JOIN keyword

SELECT 
	f.film_id,
	f.title,
	i.inventory_id
FROM
	film f
LEFT JOIN inventory i USING(film_id)
-- 	ON i.film_id = f.film_id
WHERE
	i.inventory_id IS NULL
ORDER BY
	f.title;

-- In SQL, the = operator is used for equality comparisons between non-NULL values.
-- On the other hand, the IS NULL and IS NOT NULL operators are used to check for the presence or absence of NULL values in a column
	
	
-- Right Join - direct inverse of left join
-- Right join returns all the rows from the right table and matching rows from the left table. 
-- If a row in the right table does not have any matching row in the left table, the columns of the left table will have nulls.
SELECT
	f.film_id,
	f.title,
	i.inventory_id
FROM inventory as i
	RIGHT JOIN film as f USING(film_id)
WHERE i.inventory_id IS NULL
ORDER BY f.title;

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	