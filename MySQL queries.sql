CREATE DATABASE earbuds_analysis;
USE earbuds_analysis;

SELECT *
FROM wireless_headphones
LIMIT 10;

# ===========================
# BASIC SQL (1-10)
# ===========================

# Question 1
# Retrieve all records from the wireless_headphones table.

SELECT *
FROM wireless_headphones;


# Question 2
# Display Product Name, Brand, Model, Price and Average Rating.

SELECT product_name,
       brand,
       model,
       price_usd,
       avg_rating
FROM wireless_headphones;


# Question 3
# Find the Top 10 most expensive wireless headphones.

SELECT product_name,
       brand,
       price_usd
FROM wireless_headphones
ORDER BY price_usd DESC
LIMIT 10;


# Question 4
# Find the Top 10 highest-rated wireless headphones.

SELECT product_name,
       avg_rating
FROM wireless_headphones
ORDER BY avg_rating DESC
LIMIT 10;


# Question 5
# Display products with Noise Cancellation.

SELECT product_name,
       brand
FROM wireless_headphones
WHERE noise_cancellation = 'YES';


# Question 6
# Display products having Battery Life greater than 30 hours.

SELECT product_name,
       battery_hrs
FROM wireless_headphones
WHERE battery_hrs > 30;


# Question 7
# Find products released after 2022.

SELECT product_name,
       release_year
FROM wireless_headphones
WHERE release_year > 2022;


# Question 8
# Count total number of products.

SELECT COUNT(*) AS total_products
FROM wireless_headphones;


# Question 9
# Count total number of brands.

SELECT COUNT(DISTINCT brand) AS total_brands
FROM wireless_headphones;


# Question 10
# Find the average price of all products.

SELECT ROUND(AVG(price_usd),2) AS average_price
FROM wireless_headphones;


# ===========================
# INTERMEDIATE SQL (11-20)
# ===========================

# Question 11
# Count total products available for each brand.

SELECT brand,
       COUNT(*) AS total_products
FROM wireless_headphones
GROUP BY brand
ORDER BY total_products DESC;


# Question 12
# Find average product price for each brand.

SELECT brand,
       ROUND(AVG(price_usd),2) AS average_price
FROM wireless_headphones
GROUP BY brand
ORDER BY average_price DESC;


# Question 13
# Find average rating for each brand.

SELECT brand,
       ROUND(AVG(avg_rating),2) AS average_rating
FROM wireless_headphones
GROUP BY brand
ORDER BY average_rating DESC;


# Question 14
# Find brands whose average rating is greater than 4.

SELECT brand,
       ROUND(AVG(avg_rating),2) AS average_rating
FROM wireless_headphones
GROUP BY brand
HAVING AVG(avg_rating) > 4;


# Question 15
# Count products in each Price Segment.

SELECT price_segment,
       COUNT(*) AS total_products
FROM wireless_headphones
GROUP BY price_segment;


# Question 16
# Count products in each Battery Category.

SELECT battery_category,
       COUNT(*) AS total_products
FROM wireless_headphones
GROUP BY battery_category;


# Question 17
# Find average battery life for each brand.

SELECT brand,
       ROUND(AVG(battery_hrs),2) AS average_battery
FROM wireless_headphones
GROUP BY brand
ORDER BY average_battery DESC;


# Question 18
# Compare products with and without Noise Cancellation.

SELECT noise_cancellation,
       COUNT(*) AS total_products,
       ROUND(AVG(price_usd),2) AS average_price,
       ROUND(AVG(avg_rating),2) AS average_rating
FROM wireless_headphones
GROUP BY noise_cancellation;


# Question 19
# Find Premium products having Excellent Rating.

SELECT product_name,
       price_usd,
       avg_rating
FROM wireless_headphones
WHERE price_segment='Premium'
AND rating_category='Excellent';


# Question 20
# Find Top 10 most reviewed products.

SELECT product_name,
       review_count
FROM wireless_headphones
ORDER BY review_count DESC
LIMIT 10;


# ===========================
# ADVANCED SQL (21-30)
# ===========================

# Question 21
# Rank all products based on Price.

SELECT product_name,
       price_usd,
       RANK() OVER(ORDER BY price_usd DESC) AS price_rank
FROM wireless_headphones;


# Question 22
# Rank all products based on Average Rating.

SELECT product_name,
       avg_rating,
       DENSE_RANK() OVER(ORDER BY avg_rating DESC) AS rating_rank
FROM wireless_headphones;


# Question 23
# Find the highest-priced product in each brand.

SELECT *
FROM (
    SELECT product_name,
           brand,
           price_usd,
           ROW_NUMBER() OVER(PARTITION BY brand ORDER BY price_usd DESC) AS rn
    FROM wireless_headphones
) t
WHERE rn = 1;


# Question 24
# Find the highest-rated product in each brand.

SELECT *
FROM (
    SELECT product_name,
           brand,
           avg_rating,
           ROW_NUMBER() OVER(PARTITION BY brand ORDER BY avg_rating DESC) AS rn
    FROM wireless_headphones
) t
WHERE rn = 1;


# Question 25
# Categorize products into Budget, Mid-Range and Premium using CASE WHEN.

SELECT product_name,
       price_usd,
       CASE
           WHEN price_usd < 100 THEN 'Budget'
           WHEN price_usd BETWEEN 100 AND 300 THEN 'Mid-Range'
           ELSE 'Premium'
       END AS price_category
FROM wireless_headphones;


# Question 26
# Display products having price greater than overall average price.

SELECT product_name,
       price_usd
FROM wireless_headphones
WHERE price_usd >
(
SELECT AVG(price_usd)
FROM wireless_headphones
);


# Question 27
# Find brands having more than 30 products.

SELECT brand,
       COUNT(*) AS total_products
FROM wireless_headphones
GROUP BY brand
HAVING COUNT(*) > 30;


# Question 28
# Display Top 5 brands based on Average Rating and Review Count.

SELECT brand,
       ROUND(AVG(avg_rating),2) AS average_rating,
       SUM(review_count) AS total_reviews
FROM wireless_headphones
GROUP BY brand
ORDER BY average_rating DESC,
         total_reviews DESC
LIMIT 5;


# Question 29
# Using CTE, find products with Battery Life greater than overall average.

WITH battery_cte AS
(
SELECT AVG(battery_hrs) AS avg_battery
FROM wireless_headphones
)

SELECT product_name,
       battery_hrs
FROM wireless_headphones,battery_cte
WHERE battery_hrs > avg_battery;


# Question 30
# Find the Top 10 Best Value products (Highest Rating with Lowest Price).

SELECT product_name,
       price_usd,
       avg_rating
FROM wireless_headphones
ORDER BY avg_rating DESC,
         price_usd ASC
LIMIT 10;

