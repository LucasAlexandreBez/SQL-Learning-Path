SELECT count(*) AS record_count 
FROM station_data;

SELECT count(*) AS record_count 
FROM station_data 
WHERE tornado;

SELECT year, count(*) AS record_count 
FROM station_data 
WHERE tornado
GROUP BY year;

SELECT year, month, count(*) AS record_count
FROM station_data
WHERE tornado
GROUP BY year, month;

SELECT year, month, count(*) AS record_count
FROM station_data
WHERE tornado
GROUP BY 1, 2;

SELECT year, month, count(*) AS record_count
FROM station_data
WHERE tornado
GROUP BY year, month
ORDER BY year, month;

SELECT year, month, count(*) AS record_count
FROM station_data
WHERE tornado
GROUP BY year, month
ORDER BY year DESC, month;

SELECT count(snow_depth) AS recorded_snow_depth_count
FROM station_data;

SELECT month, avg(temperature) AS avg_temp
FROM station_data
WHERE year>= 2000
GROUP BY month;

SELECT month, round(avg(temperature), 2) AS avg_temp
FROM station_data
WHERE year>= 2000
GROUP BY month;

SELECT year, sum(snow_depth) AS total_snow
FROM station_data
WHERE year>= 2000
GROUP BY year;

SELECT year, 
   sum(snow_depth) AS total_snow,
   sum(precipitation) AS total_precipitation,
   max(precipitation) AS max_precipitation
FROM station_data
WHERE year>= 2000
GROUP BY year;

SELECT year, sum(precipitation) AS total_precipitation
FROM station_data
WHERE tornado = 1
GROUP BY year;

SELECT year, sum(precipitation) AS total_precipitation
FROM station_data
GROUP BY year
HAVING total_precipitation > 30;

SELECT DISTINCT station_number, year FROM station_data;