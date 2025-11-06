-- phase two 2 -- EDA
-- 1- total sales , how many different people bought sth, how many total orders
SELECT 
	SUM(totalrevenue) as total_revenue,
	count(distinct customerid) as total_customers,
	count(distinct invoiceno) as total_orders
from sales_clean;

-- insights: total_revenue: 10587015, total_customers: 4338, total_orders: 19959


-- 2- avg order value (AOV)
select 
	sum(totalrevenue) / count(distinct invoiceno) as avg_order_value
from sales_clean;

-- insights: average order value: 530


-- 3 revenue by month(sales trends)
select
	 DATE_TRUNC('month', InvoiceDate)::date AS month,
     SUM(TotalRevenue) AS revenue
FROM sales_clean
GROUP BY month
ORDER BY month;

-- insights: most income in: DECEMBER 2010 - JANURARY 2011
-- Recommendation:
-- “Increase stock levels of top 20 SKUs by September and begin early holiday promotions. Plan logistics and staffing ahead of Q4 to handle increased demand.”

-- 4 top selling products
SELECT
  Description,
  SUM(TotalRevenue) AS total_revenue,
  SUM(Quantity) AS total_units
FROM sales_clean
GROUP BY Description
ORDER BY total_revenue DESC
LIMIT 10;

-- insights: top selling products are: 1- DOTCOM POSTAGE, 2- REGENCY CAKESTAND 3 TIER, 3- PAPER CRAFT
-- Recommendation:
-- “Prioritize supplier reliability for these SKUs. Consider promoting complementary items to diversify revenue and reduce dependency on a few products.”

-- 5- countries with highest sales
SELECT
  Country,
  SUM(TotalRevenue) AS total_revenue,
  COUNT(DISTINCT CustomerID) AS customers
FROM sales_clean
GROUP BY Country
ORDER BY total_revenue DESC
LIMIT 10;

-- insights: 1-UK, 2- NETHERLAND, 3- EIRE
-- Recommendation:
-- “Expand into EU countries with localized pricing and shipping options to grow non-UK revenue share to 25%.”

-- 6 most loyal customers
SELECT
  CustomerID,
  COUNT(DISTINCT InvoiceNo) AS number_of_orders,
  SUM(TotalRevenue) AS total_spent
FROM sales_clean
GROUP BY CustomerID
ORDER BY total_spent DESC
LIMIT 10;

-- insights: most loyal customer with 1428 orders


-- 7 customers with most orders(frequency)
SELECT
  CustomerID,
  COUNT(DISTINCT InvoiceNo) AS orders_count
FROM sales_clean
GROUP BY CustomerID
ORDER BY orders_count DESC
LIMIT 10;
-- Recommendation:
-- “Launch an email loyalty program targeting customers who purchased in the last 90 days but haven’t reordered. Offer personalized bundles to raise repeat rate to 40%.”

-- 8 average item per order
SELECT
  AVG(items_per_order) AS avg_items_per_order
FROM (
  SELECT
    InvoiceNo,
    SUM(Quantity) AS items_per_order
  FROM sales_clean
  GROUP BY InvoiceNo
) sub;

-- insights: Average number of items per orders 


-- 9 weekly patern(which days people buy most)
SELECT
  TO_CHAR(InvoiceDate, 'Day') AS day_of_week,
  SUM(TotalRevenue) AS revenue
FROM sales_clean
GROUP BY day_of_week
ORDER BY revenue DESC;

-- insights: thursday was the day with most purchased items


