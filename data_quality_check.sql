CREATE OR REPLACE TABLE data_quality.quality_report AS
SELECT
  COUNT(*) AS total_records,
  COUNTIF(product IS NULL) AS null_products,
  COUNTIF(revenue <= 0) AS invalid_revenue,
  COUNT(*) - COUNT(DISTINCT order_id) AS duplicate_orders,
  SAFE_DIVIDE(
    COUNTIF(product IS NOT NULL AND revenue > 0),
    COUNT(*)
  ) * 100 AS data_quality_score
FROM data_quality.raw_sales_data;
