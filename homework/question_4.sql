SELECT
	CAST(tpep_pickup_datetime AS DATE) AS "day",
	COUNT(1) "count",
	MAX(tip_amount) "max_tip"
FROM
	yellow_taxi_trips t
GROUP BY
	1
ORDER BY
	"max_tip" DESC;