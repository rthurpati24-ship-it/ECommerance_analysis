select *
from ecommerce;
SELECT * 
FROM ecommerce
LIMIT 5;
SELECT `Total Purchase Amount`
FROM ecommerce
LIMIT 5;
DESC ecommerce;
SELECT `Product Category`,
       SUM(IFNULL(`Total Purchase Amount`,0)) AS total_sales
FROM ecommerce
GROUP BY `Product Category`;
-- this query for TOP PRODUCTS
SELECT `Product Category`,
       SUM(CAST(`Total Purchase Amount` AS DECIMAL(10,2))) AS total_sales
FROM ecommerce
GROUP BY `Product Category`
ORDER BY total_sales DESC
LIMIT 5;
-- This Query is For customers mostly used in which payment method
SELECT `Payment Method`,
       COUNT(*) AS usage_count
FROM ecommerce
GROUP BY `Payment Method`
ORDER BY usage_count DESC;




