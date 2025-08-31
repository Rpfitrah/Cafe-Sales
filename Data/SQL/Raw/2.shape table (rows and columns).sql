SELECT
  COUNT(*) AS total_baris,
  (SELECT COUNT(*) 
   FROM information_schema.columns 
   WHERE table_name = 'raw_cafe_sales') AS total_kolom
FROM raw_cafe_sales;