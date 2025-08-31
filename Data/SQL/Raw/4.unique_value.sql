SELECT
  `transaction_id` AS `transaction_id`,
  COUNT(*) AS count
FROM raw_cafe_sales
GROUP BY `transaction_id` 
ORDER BY count DESC;
--
SELECT
  `item` AS `item`,
  COUNT(*) AS count
FROM raw_cafe_sales
GROUP BY `item` 
ORDER BY count DESC;
--
SELECT
  `quantity` AS `quantity`,
  COUNT(*) AS count
FROM raw_cafe_sales
GROUP BY `quantity` 
ORDER BY count DESC;
--
SELECT
  `price_per_unit` AS `price_per_unit`,
  COUNT(*) AS count
FROM raw_cafe_sales
GROUP BY `price_per_unit` 
ORDER BY count DESC;
--
SELECT
  `total_spent` AS `total_spent`,
  COUNT(*) AS count
FROM raw_cafe_sales
GROUP BY `total_spent` 
ORDER BY count DESC;
--
SELECT
  `payment_method` AS `payment_method`,
  COUNT(*) AS count
FROM raw_cafe_sales
GROUP BY `payment_method` 
ORDER BY count DESC;
--
SELECT
  `location` AS `location`,
  COUNT(*) AS count
FROM raw_cafe_sales
GROUP BY `location` 
ORDER BY count DESC;
--
SELECT
  `transaction_date` AS `transaction_date`,
  COUNT(*) AS count
FROM raw_cafe_sales
GROUP BY `transaction_date` 
ORDER BY count DESC;
