CREATE OR REPLACE TABLE data_quality.alert_status AS
SELECT
  CURRENT_DATE() AS check_date,
  CASE
    WHEN data_quality_score < 95
      OR invalid_revenue > 0
      OR null_products > 0
    THEN 'ALERT'
    ELSE 'OK'
  END AS alert_flag,
  data_quality_score,
  null_products,
  invalid_revenue
FROM data_quality.quality_report;
