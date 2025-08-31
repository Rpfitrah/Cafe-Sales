SELECT
	'quantity' AS column_name,
  MIN(CASE WHEN quantity REGEXP '^[0-9\\.]+$' THEN CAST(quantity AS DECIMAL) END) AS min,
  MAX(CASE WHEN quantity REGEXP '^[0-9\\.]+$' THEN CAST(quantity AS DECIMAL) END) AS max,
  AVG(CASE WHEN quantity REGEXP '^[0-9\\.]+$' THEN CAST(quantity AS DECIMAL) END) AS avg
FROM raw_cafe_sales

Union All

SELECT
	'price_per_unit' AS column_name,
  MIN(CASE WHEN price_per_unit REGEXP '^[0-9\\.]+$' THEN CAST(price_per_unit AS DECIMAL) END),
  MAX(CASE WHEN price_per_unit REGEXP '^[0-9\\.]+$' THEN CAST(price_per_unit AS DECIMAL) END),
  AVG(CASE WHEN price_per_unit REGEXP '^[0-9\\.]+$' THEN CAST(price_per_unit AS DECIMAL) END)
FROM raw_cafe_sales

union ALL

SELECT
	'total_spent' AS column_name,
  MIN(CASE WHEN total_spent REGEXP '^[0-9\\.]+$' THEN CAST(total_spent AS DECIMAL) END),
  MAX(CASE WHEN total_spent REGEXP '^[0-9\\.]+$' THEN CAST(total_spent AS DECIMAL) END),
  AVG(CASE WHEN total_spent REGEXP '^[0-9\\.]+$' THEN CAST(total_spent AS DECIMAL) END)
FROM clean_cafe_sales