# food insecutiyにおいてsubpopulationでグループ別にvalueの平均値を比較
SELECT
  AVG(value) AS total_value,
  subpopulation
FROM
  `bigquery-public-data.america_health_rankings.ahr`
WHERE
  measure_name LIKE "%Food Insecurity%"
GROUP BY 
  subpopulation
ORDER BY
  total_value DESC
;
