CREATE TABLE clean_cafe_sales AS
SELECT 
  transaction_id,
  
  /* ---------- Item Cleaning (remove UNKNOWN AND ERROR) ---------- */
  CASE
    WHEN item IS NOT NULL AND item != ''
    AND UPPER(item) NOT IN ('UNKNOWN', 'ERROR')
    THEN item
    ELSE NULL
  END AS item,
  
  /* ---------- Quantity Cleaning (remove UNKNOWN AND ERROR) ---------- */
  CASE
    WHEN quantity IS NOT NULL AND quantity != ''
    AND UPPER(quantity) NOT IN ('UNKNOWN', 'ERROR') THEN
      CASE
        WHEN CAST(REGEXP_REPLACE(quantity, '[^0-9.]', '') AS DECIMAL) BETWEEN 0 AND 5
        THEN CAST(REGEXP_REPLACE(quantity, '[^0-9.]', '') AS DECIMAL)
        ELSE NULL
      END
    ELSE NULL
  END AS quantity,
  
  /* ---------- Price Unit Cleaning (remove UNKNOWN AND ERROR) ---------- */
  CASE
    WHEN price_per_unit IS NOT NULL AND price_per_unit != ''
    AND UPPER(price_per_unit) NOT IN ('UNKNOWN', 'ERROR') THEN
      CASE
        WHEN CAST(REGEXP_REPLACE(price_per_unit, '[^0-9.]', '') AS DECIMAL(3,1)) BETWEEN 0 AND 6
        THEN CAST(REGEXP_REPLACE(price_per_unit, '[^0-9.]', '') AS DECIMAL(3,1))
        ELSE NULL
      END
    ELSE NULL
  END AS price_unit,
 
 /* ---------- Total Spent Cleaning (remove UNKNOWN AND ERROR) ---------- */
  CASE
    WHEN total_spent IS NOT NULL AND total_spent != ''
    AND UPPER(total_spent) NOT IN ('UNKNOWN', 'ERROR') THEN
      CASE
        WHEN CAST(REGEXP_REPLACE(total_spent, '[^0-9.]', '') AS DECIMAL(3,1)) BETWEEN 0 AND 30
        THEN CAST(REGEXP_REPLACE(total_spent, '[^0-9.]', '') AS DECIMAL(3,1))
        ELSE NULL
      END
    ELSE NULL
  END AS total_spent,
  
   /* ---------- Payment Method Cleaning (remove UNKNOWN AND ERROR) ---------- */
  CASE
    WHEN payment_method IS NOT NULL AND payment_method != ''
    AND UPPER(payment_method) NOT IN ('UNKNOWN', 'ERROR')
    THEN payment_method
    ELSE NULL
  END AS payment_method,
  
  /* ---------- Location Cleaning (remove UNKNOWN AND ERROR) ---------- */
  CASE
    WHEN location IS NOT NULL AND location != ''
    AND UPPER(location) NOT IN ('UNKNOWN', 'ERROR')
    THEN location
    ELSE NULL
  END AS location,
  
  /* ---------- Transaction Date Cleaning (remove UNKNOWN AND ERROR) ---------- */
  CASE
    WHEN transaction_date IS NOT NULL AND transaction_date != ''
    AND UPPER(total_spent) NOT IN ('UNKNOWN', 'ERROR') 
    AND transaction_date REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'
    THEN transaction_date     
    ELSE NULL
  END AS transaction_date
  
FROM raw_cafe_sales;
