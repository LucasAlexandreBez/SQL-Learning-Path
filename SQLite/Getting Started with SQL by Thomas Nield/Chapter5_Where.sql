SELECT * FROM station_data;

SELECT * FROM station_data
WHERE year = 2010;

SELECT * FROM station_data
WHERE year != 2010;

SELECT * FROM station_data
WHERE year <> 2010;

SELECT * FROM station_data
WHERE year BETWEEN 2005 AND 2010;

SELECT * FROM station_data
WHERE year >= 2005 AND year <= 2010;

SELECT * FROM station_data
WHERE year > 2005 AND year < 2010;

SELECT * FROM station_data
WHERE month = 3 
OR month = 6
OR month = 9
OR month = 12;

SELECT * FROM station_data
WHERE month IN (3, 6, 9, 12);

SELECT * FROM station_data
WHERE month NOT IN (3, 6, 9, 12);

SELECT * FROM station_data
WHERE month % 3 = 0;

SELECT * FROM station_data
WHERE report_code = '513A63';

SELECT * FROM station_data
WHERE report_code IN ('513A63', '1F8A7B', 'EF616A');

SELECT * FROM station_data
WHERE length(report_code) != 6;

SELECT * FROM station_data
WHERE report_code LIKE 'A%';

SELECT * FROM station_data
WHERE report_code LIKE 'B_C%';

SELECT * FROM station_data
WHERE tornando = true AND hail = true;

SELECT * FROM station_data
WHERE tornado = 1 AND hail = 1;

SELECT * FROM station_data
WHERE tornado = 0 AND hail = 1;

SELECT * FROM station_data
WHERE tornado AND hail;

SELECT * FROM station_data
WHERE NOT tornado AND hail = 1;

SELECT * FROM station_data
WHERE snow_depth IS NULL;

SELECT * FROM station_data
WHERE precipitation <= 0.5;

SELECT * FROM station_data
WHERE precipitation IS NULL OR precipitation <= 0.5;

SELECT * FROM station_data
WHERE coalesce(precipitation, 0) <= 0.5;

SELECT report_code, coalesce(precipitation, 0) AS rainfall
FROM station_data;


SELECT * FROM station_data
WHERE (rain = 1 AND temperature <= 32)
OR snow_depth > 0;