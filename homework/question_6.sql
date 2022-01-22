SELECT
	CONCAT(zpu."Zone", ' / ', zdo."Zone") AS pairs,
	AVG(total_amount),
	count(1)
FROM
	yellow_taxi_trips t
LEFT JOIN
	zones zpu
		ON t."PULocationID" = zpu."LocationID"
LEFT JOIN
	zones zdo
		ON t."DOLocationID" = zdo."LocationID"
GROUP BY
	1
ORDER BY
	2
DESC;