SELECT * FROM invoices limit 10;
select count(*) from invoices;

-- check for missing values
SELECT 
	SUM(CASE WHEN customerid IS NULL THEN 1 ELSE 0 END) AS missing_customer,
	SUM (CASE WHEN description IS NULL THEN 1 ELSE 0 END) AS missing_description,
	SUM(CASE WHEN quantity IS NULL THEN 1 ELSE 0 END) AS missing_quantity,
	SUM(CASE WHEN unitprice IS NULL THEN 1 ELSE 0 END) AS missing_price
FROM invoices;

-- check for invalid values
SELECT
    SUM(CASE WHEN Quantity <= 0 THEN 1 ELSE 0 END) AS invalid_quantity,
    SUM(CASE WHEN UnitPrice <= 0 THEN 1 ELSE 0 END) AS invalid_price
FROM invoices;

-- remove duplicates
SELECT InvoiceNo, StockCode, COUNT(*) AS count_duplicates
FROM invoices
GROUP BY InvoiceNo, StockCode
HAVING COUNT(*) > 1
ORDER BY count_duplicates DESC
LIMIT 10;

select * from sales_clean;


