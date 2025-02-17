SELECT * FROM anita.`sql - retail sales analysis_utf`;

SELECT 
    EXTRACT(HOUR FROM sale_time) AS sale_hour,
    SUM(total_sale) AS total_sales
FROM anita.`sql - retail sales analysis_utf`
GROUP BY sale_hour
ORDER BY sale_hour;


  
SELECT category, transactions_id, total_sale
FROM anita.`sql - retail sales analysis_utf`
WHERE sales_rank <= 5
ORDER BY category, sales_rank;

SELECT 
    EXTRACT(MONTH FROM sale_date) AS sale_month,
    EXTRACT(YEAR FROM sale_date) AS sale_year,
    SUM(total_sale) AS total_sales
FROM anita.`sql - retail sales analysis_utf`
GROUP BY sale_year, sale_month
ORDER BY sale_year, sale_month;

SELECT 
    gender,
    SUM(total_sale) AS total_sales
FROM anita.`sql - retail sales analysis_utf`
GROUP BY gender
ORDER BY total_sales DESC;

SELECT 
    category, 
    AVG(price_per_unit) AS avg_price_per_unit
FROM anita.`sql - retail sales analysis_utf`
GROUP BY category
ORDER BY avg_price_per_unit DESC;

SELECT 
    customer_id,
    SUM(total_sale) AS total_spending
FROM anita.`sql - retail sales analysis_utf`
GROUP BY customer_id
ORDER BY total_spending DESC
LIMIT 5;

SELECT 
    CASE
        WHEN age BETWEEN 20 AND 29 THEN '20-29'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        WHEN age BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60+'
    END AS age_group,
    SUM(total_sale) AS total_sales
FROM anita.`sql - retail sales analysis_utf`
GROUP BY age_group
ORDER BY total_sales DESC;

SELECT 
    category, 
    SUM(quantity) AS total_units_sold
FROM anita.`sql - retail sales analysis_utf`
GROUP BY category
ORDER BY total_units_sold DESC;



SELECT 
    category,
    SUM(cogs) AS total_cogs,
    SUM(total_sale) AS total_sales,
    (SUM(total_sale) - SUM(cogs)) AS profit
FROM anita.`sql - retail sales analysis_utf`
GROUP BY category
ORDER BY profit DESC;

SELECT 
    gender, 
    AVG(total_sale) AS avg_sales_value
FROM anita.`sql - retail sales analysis_utf`
GROUP BY gender
ORDER BY avg_sales_value DESC;

SELECT 
    TO_CHAR(sale_date, 'Day') AS day_of_week, 
    category, 
    SUM(total_sale) AS total_sales
FROM anita.`sql - retail sales analysis_utf`
GROUP BY day_of_week, category
ORDER BY total_sales DESC;


SELECT 
    sale_date, 
    SUM(total_sale) AS daily_sales
FROM anita.`sql - retail sales analysis_utf`
GROUP BY sale_date
ORDER BY sale_date;

SELECT 
    category, 
    AVG(quantity) AS avg_units_sold
FROM anita.`sql - retail sales analysis_utf`
GROUP BY category
ORDER BY avg_units_sold DESC;


SELECT 
    category,
    SUM(total_sale) AS total_sales,
    SUM(cogs) AS total_cogs,
    (SUM(total_sale) - SUM(cogs)) / SUM(total_sale) AS profit_margin
FROM anita.`sql - retail sales analysis_utf`
GROUP BY category
ORDER BY profit_margin DESC;





