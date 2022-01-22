SELECT
	COUNT(1) "count"
FROM
	yellow_taxi_trips t
WHERE
	CAST(tpep_pickup_datetime AS DATE) = "2021-01-15";