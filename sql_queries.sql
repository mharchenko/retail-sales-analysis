--Запит 1: Загальна сума продажів по категоріях за кожен місяць
SELECT 
    FORMAT_DATE('%Y-%m', order_date) AS month,
    category,
    SUM(quantity * price) AS total_sales
FROM `pivotal-pattern-469617-g0.retail_sales.sales`
GROUP BY month, category
ORDER BY month, category;

-- Запит 2: Топ-10 клієнтів за сумою витрачених коштів
SELECT 
    customer_id,
    customer_name,
    SUM(quantity * price) AS total_spent
FROM `pivotal-pattern-469617-g0.retail_sales.sales`
GROUP BY customer_id, customer_name
ORDER BY total_spent DESC
LIMIT 10;

-- Запит 3: Загальна кількість проданих одиниць кожного продукту
SELECT 
    product_id,
    product_name,
    SUM(quantity) AS total_units_sold
FROM `pivotal-pattern-469617-g0.retail_sales.sales`
GROUP BY product_id, product_name
ORDER BY total_units_sold DESC;

-- Запит 4: Середня ціна продажу для кожної категорії продуктів
SELECT 
    category,
    ROUND(AVG(price), 2) AS avg_price
FROM `pivotal-pattern-469617-g0.retail_sales.sales`
GROUP BY category
ORDER BY category;

-- Запит 5: Найпопулярніші дні тижня для продажів
SELECT 
    FORMAT_DATE('%A', order_date) AS day_of_week,
    EXTRACT(DAYOFWEEK FROM order_date) AS day_number,
    SUM(quantity) AS total_units_sold
FROM `pivotal-pattern-469617-g0.retail_sales.sales`
GROUP BY day_of_week, day_number
ORDER BY total_units_sold DESC;
