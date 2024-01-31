-- Group By - divides the rows returned from the SELECT statement into groups
SELECT 
  customer_id 
FROM 
  payment 
GROUP BY 
  customer_id 
ORDER BY 
  customer_id;
  
  SELECT 
  customer_id, 
  SUM (amount) 
FROM 
  payment 
GROUP BY 
  customer_id 
ORDER BY 
  customer_id;
  
 
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

CREATE TABLE order_details (
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2)
);

INSERT INTO orders VALUES (1, 101, '2022-01-01', 100.00);
INSERT INTO orders VALUES (2, 102, '2022-01-02', 150.00);

INSERT INTO order_details VALUES (1, 1, 2, 30.00);
INSERT INTO order_details VALUES (1, 2, 3, 20.00);
INSERT INTO order_details VALUES (2, 1, 1, 50.00);
INSERT INTO order_details VALUES (2, 3, 2, 25.00);

Select * from order_details;

SELECT
    o.customer_id,
    od.product_id,
    SUM(od.quantity) AS total_quantity,
    SUM(od.quantity * od.price) AS total_amount_spent
FROM
    orders o
    JOIN order_details od ON o.order_id = od.order_id
WHERE
    o.customer_id = 101
GROUP BY
    o.customer_id, od.product_id;





