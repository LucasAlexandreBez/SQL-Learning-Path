SELECT year, month,
SUM(CASE WHEN tornado = 1 THEN precipitation ELSE 0 END) AS tornado_precipitation,
SUM(CASE WHEN tornado = 0 THEN precipitation ELSE 0 END) AS non_tornado_precipitation
FROM station_data
GROUP BY year, month;

SELECT year,
MAX(CASE WHEN tornado = 1 THEN precipitation ELSE null END) AS max_tornado_precipitation,
MAX(CASE WHEN tornado = 0 THEN precipitation ELSE null END) AS max_non_tornado_precipitation
FROM station_data
GROUP BY year;

SELECt month,
round(AVG(CASE WHEN rain OR hail THEN temperature ELSE null END), 2) AS avg_precipitation_temp,
round(AVG(CASE WHEN NOT (rain OR hail) THEN temperature ELSE null END), 2) AS avg_non_precipitation_temp
FROM station_data
WHERE year > 2000
GROUP BY month;