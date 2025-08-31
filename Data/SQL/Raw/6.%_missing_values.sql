SELECT
  ROUND(SUM(CASE WHEN `transaction_id` IS NULL OR `transaction_id` = '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS missing_pct_transaction_id,
  ROUND(SUM(CASE WHEN `item` IS NULL OR `item` = '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS missing_pct_item,
  ROUND(SUM(CASE WHEN `quantity` IS NULL OR `quantity` = '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS missing_pct_quantity,
  ROUND(SUM(CASE WHEN `price_per_unit` IS NULL OR `price_per_unit` = '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS missing_pct_price_per_unit,
  ROUND(SUM(CASE WHEN `total_spent` IS NULL OR `total_spent` = '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS missing_pct_total_spent,
  ROUND(SUM(CASE WHEN `payment_method` IS NULL OR `payment_method` = '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS missing_pct_payment_method,
  ROUND(SUM(CASE WHEN `location` IS NULL OR `location` = '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS missing_pct_location,
  ROUND(SUM(CASE WHEN `transaction_date` IS NULL OR `transaction_date` = '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS missing_pct_transaction_date
FROM raw_cafe_sales;
