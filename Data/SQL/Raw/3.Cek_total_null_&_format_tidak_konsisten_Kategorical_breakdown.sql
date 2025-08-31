

-- Contoh tambahan untuk melihat breakdown per kolom
SELECT
  'item' AS column_name,
  SUM(CASE WHEN item IS NULL OR item = '' THEN 1 ELSE 0 END) AS null_or_empty_count,
  SUM(CASE WHEN item LIKE '%UNKNOWN%' THEN 1 ELSE 0 END) AS contains_invalid_value
FROM raw_cafe_sales

UNION ALL

SELECT
	'quantity' AS column_name,
  SUM(CASE WHEN quantity IS NULL OR quantity = '' THEN 1 ELSE 0 END),
  SUM(CASE WHEN quantity LIKE '%UNKNOWN%' OR quantity LIKE '%ERROR%' THEN 1 ELSE 0 END)
FROM raw_cafe_sales

UNION ALL

SELECT
	'price_per_unit' AS column_name,
  SUM(CASE WHEN price_per_unit IS NULL OR price_per_unit = '' THEN 1 ELSE 0 END),
  SUM(CASE WHEN price_per_unit LIKE '%UNKNOWN%' OR price_per_unit LIKE '%ERROR%' THEN 1 ELSE 0 END)
FROM raw_cafe_sales

UNION ALL

SELECT
	'total_spent' AS column_name,
  SUM(CASE WHEN total_spent IS NULL OR total_spent = '' THEN 1 ELSE 0 END),
  SUM(CASE WHEN total_spent LIKE '%UNKNOWN%' OR total_spent LIKE '%ERROR%' THEN 1 ELSE 0 END)
FROM raw_cafe_sales

UNION ALL

SELECT
	'payment_method' AS column_name,
  SUM(CASE WHEN payment_method IS NULL OR payment_method = '' THEN 1 ELSE 0 END),
  SUM(CASE WHEN payment_method LIKE '%UNKNOWN%' OR payment_method LIKE '%ERROR%' THEN 1 ELSE 0 END)
FROM raw_cafe_sales

UNION ALL

SELECT
	'location' AS column_name,
  SUM(CASE WHEN location IS NULL OR location = '' THEN 1 ELSE 0 END),
  SUM(CASE WHEN location LIKE '%UNKNOWN%' OR location LIKE '%ERROR%' THEN 1 ELSE 0 END)
FROM raw_cafe_sales

UNION ALL

SELECT
	'transaction_date' AS column_name,
  SUM(CASE WHEN transaction_date IS NULL OR transaction_date = '' THEN 1 ELSE 0 END),
  SUM(CASE WHEN transaction_date LIKE '%UNKNOWN%' OR transaction_date LIKE '%ERROR%' THEN 1 ELSE 0 END)
FROM raw_cafe_sales
