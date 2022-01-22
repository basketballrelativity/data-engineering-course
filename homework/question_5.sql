
	"DOLocationID",
	zones."Zone",
	count(1)
FROM
	zones
RIGHT JOIN
	yellow_taxi_trips t
		ON t."DOLocationID" = zones."LocationID"
WHERE
	"PULocationID" = 43
	AND CAST(tpep_pickup_datetime AS DATE) = '2021-01-14'
GROUP BY
	1, 2
ORDER BY
	3
DESC;