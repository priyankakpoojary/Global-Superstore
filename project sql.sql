USE employee;

SELECT COUNT(*) FROM dataset;

SELECT * FROM dataset;


-- Top 10 Profitable Products--
SELECT product_name ,SUM(profit) AS total_profit
FROM dataset
Group by product_name
ORDER by total_profit DESC 
Limit 10;



-- Top 10 Customers by Sales --
SELECT customer_name , SUM(sales) AS total_sales
FROM dataset
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- Region-wise Total Sales --
SELECT region,SUM(sales) AS total_sales
FROM dataset
GROUP BY region
ORDER BY total_sales DESC;

-- Category-wise Average Profit --
SELECT category,AVG(profit) as avg_profit
FROM dataset
GROUP BY category;


-- Highest Discount Category --
SELECT category, MAX(discount) as highest_discount
FROM dataset
GROUP BY category
ORDER BY highest_discount DESC;

-- Orders with Negative Profit --
SELECT order_id, product_name, profit
FROM dataset
WHERE profit < 0
ORDER BY profit;

-- Monthly Sales Trend --
SELECT MONTH(order_date) AS month,
SUM(sales) as total_sales
FROM dataset 
GROUP BY (order_date)
ORDER BY month;


-- Market-wise Revenue Analysis --
SELECT market, SUM(sales) AS revenue
FROM dataset
GROUP BY market
ORDER BY revenue DESC;


-- Top-performing Sub-categories --
SELECT sub_category, SUM(profit) AS total_profit
FROM dataset
GROUP BY sub_category
ORDER BY total_profit DESC;



-- Ship Mode Usage Analysis --
SELECT ship_mode, COUNT(*) AS total_orders
FROM dataset
GROUP BY ship_mode
ORDER BY total_orders DESC;



-- SQL Analysis Insights
-- 1)Highest Revenue Market

-- The US/APAC market generated the highest revenue among all markets.

-- 2️) Least Profitable Category

-- Furniture category showed lower profitability compared to Technology and Office Supplies.

-- 3️) Most Common Shipping Mode

-- Standard Class was the most frequently used shipping mode for orders.

-- 4️)Top Performing Products

-- Technology products contributed significantly to overall profit and sales.

-- 5️) Loss-Making Orders

-- Some products generated negative profit due to high discounts and shipping costs.

-- 6️) Monthly Sales Trend

-- Sales performance varied across months, with certain months showing peak sales growth.

-- 7) Region-wise Sales

-- Some regions consistently performed better in sales compared to others.

-- 8️) Discount Analysis

-- Furniture category received the highest discounts among all categories.

-- 9️) Customer Analysis

-- A few customers contributed a major share of total sales revenue.

-- 10) Sub-category Performance

-- Certain sub-categories outperformed others in terms of profitability and sales.


