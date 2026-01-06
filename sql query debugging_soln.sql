# Quality Check 1: How many unique customers are in the city of 'Surat'?
# answer : 11
SELECT 
        COUNT(DISTINCT customer_id) AS distinct_customers
FROM gdb080.dim_customers
WHERE city = 'surat'
;  

# Quality Check 2 : What is the highest quantity available for the product 'AM Tea 100'?
# answer : 200
SELECT 
        p.product_name,
        MAX(f.order_qty) as highest_qty
FROM gdb080.fact_order_lines f
JOIN gdb080.dim_products p ON f.product_id = p.product_id
WHERE product_name = "AM Tea 100"
ORDER BY highest_qty
;

# Quality Check 3 : In which month were the unfulfilled orders the highest in number?
# answer : May

SELECT 
        MONTHNAME(order_placement_date) as month_name, 
        SUM(order_qty-delivery_qty) as unfullfilled_orders
FROM gdb080.fact_order_lines
GROUP By month_name
ORDER BY unfullfilled_orders DESC
; 

# Quality Check 4 : What is the percentage of the total order quantity accounted for by the 'food' category? (Submit answer in 2 decimals)
# answer : 12.50 
with cte1 as
(
	SELECT 
		p.category, 
		SUM(f.order_qty) as qty
	FROM gdb080.dim_products p
    JOIN gdb080.fact_order_lines f 
		ON p.product_id = f.product_id
	GROUP BY p.category
),  
cte2 as 
(
	SELECT
	SUM(qty) as total_qty
    FROM cte1
)    
    SELECT
        *,
        ROUND(qty / total_qty*100,2) AS order_qty_pct
FROM cte1,cte2
WHERE category = "Food"
;

# Quality Check 5 : What is the count of customers falling under the 'Above 90' category based on their ontime_target_pct?
# answer : 9

with cte1 as (SELECT 
		c.customer_id,
        c.customer_name,
        t.ontime_target_pct,
    CASE 
		WHEN t.ontime_target_pct > 90 THEN "Above 90"
		WHEN t.ontime_target_pct > 80 THEN "Above 80"
		WHEN t.ontime_target_pct > 70 THEN "Above 70"
        ELSE "Below 70"
        END as percentage_category
 FROM gdb080.dim_targets_orders t
 JOIN gdb080.dim_customers c
 ON t.customer_id = c.customer_id
 )
 select COUNT(*) 
 FROM cte1
 WHERE percentage_category LIKE "above 90" 
 ;


# Quality Check 6 : What is the count of distinct products available in the 'Dairy' category?
# answer : 12

SELECT category, 
product_name,
COUNT(distinct product_id) AS product_count
FROM gdb080.dim_products
GROUP BY category
;

# Quality Check 7 : What is the total order quantity (in millions) for the top 3 products in the Dairy Category? (Submit answer in 2 decimals)
# answer : 3.81

with cte1 as (
SELECT 
	p.product_name,
	ROUND(SUM(f.order_qty) / 1000000,2) AS order_qty_mln
FROM gdb080.dim_products p
JOIN gdb080.fact_order_lines f
	ON p.product_id = f.product_id
WHERE p.category = 'Dairy'
GROUP BY p.product_name
ORDER BY order_qty_mln DESC
LIMIT 3
)
SELECT
	SUM(order_qty_mln) as total_order_qty
FROM cte1
;

# Quality Check 8 : What is the OTIF percentage for the customer "Vijay Stores"?
# answer : 28.28

SELECT 
	c.customer_name,
	ROUND((SUM(f.otif) / COUNT(f.order_id) * 100),2) AS OTIF_percentage
FROM gdb080.fact_orders_aggregate f
JOIN gdb080.dim_customers c 
	ON c.customer_id = f.customer_id
WHERE c.customer_name = "Vijay Stores"
GROUP BY c.customer_name
;


 # Quality Check 9 :What is the count of products with an IF percentage greater than 67%?
 # answer : 3
 
 WITH cte AS(
SELECT d.product_name, SUM(f.In_Full) AS in_full$, COUNT(f.order_id) AS total_cnt
FROM gdb080.fact_order_lines f
JOIN gdb080.dim_products d
ON f.product_id=d.product_id
GROUP BY d.product_name), cte1 AS(
SELECT *, ROUND(in_full$/total_cnt *100, 2) AS IF_percentage
FROM cte
HAVING IF_percentage>67
ORDER BY IF_percentage DESC)
SELECT COUNT(*) AS cnt
FROM cte1
;