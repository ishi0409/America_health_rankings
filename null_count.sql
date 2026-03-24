# Food Insecurityにおいてsubpopulation別の欠測値の数の比較
SELECT
  subpopulation,
  SUM(CASE WHEN value IS NULL THEN 1 ELSE 0 END) AS null_count 
FROM
  `bigquery-public-data.america_health_rankings.ahr`
WHERE 
  measure_name LIKE "%Food Insecurity%"
GROUP BY
  subpopulation
ORDER BY
  null_count DESC
;
