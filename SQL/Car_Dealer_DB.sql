CREATE SCHEMA cars;
USE cars;

-- 1.Read Data --
SELECT *
FROM car_dekho;

-- 2.Total Cars --
SELECT 
	COUNT(*) AS total_cars
FROM car_dekho;

-- 3.How many cars available in 2023? --
SELECT 
    COUNT(name) AS available_in_2023
FROM car_dekho
WHERE year = 2023;

-- 4.How many cars available in 2020,2021,2022? --
SELECT
	year,
	COUNT(year) AS available_cars
FROM car_dekho
WHERE year BETWEEN 2020 AND 2022 -- WHERE year in (2020,2021,2022) --
GROUP BY year
ORDER BY year;

-- 5. All cars by year
SELECT
	year,
    COUNT(year) AS total_cars_by_year
FROM car_dekho
GROUP BY year
ORDER BY year DESC;

-- 6. How many diesel cars available in 2020?
SELECT
	year,
    COUNT(fuel) AS total_cars_using_diesel
FROM car_dekho
WHERE year = 2020 AND fuel = 'diesel'
GROUP BY year;

-- 7. How many petrol cars available in 2022?
SELECT
	year,
    COUNT(fuel) AS total_cars_using_petrol
FROM car_dekho
WHERE year = 2022 AND fuel = 'petrol'
GROUP BY year;

-- 8.All the fuel cars (petrol,diesel, and CNG) by year
SELECT
	year,
    fuel,
    COUNT(fuel) AS total_cars_by_fuel
FROM car_dekho
WHERE fuel in ('petrol','diesel','CNG')
GROUP BY year,fuel
ORDER BY year DESC;

-- 9.Year with more than 100 cars?
SELECT 
	year,
    COUNT(year) AS total_cars_by_year
FROM car_dekho
GROUP BY year
HAVING COUNT(year) > 100
ORDER BY year DESC;

-- 10.Car count details between 2015 and 2023,Complete list
SELECT 
	year,
	COUNT(*) AS total_cars
FROM car_dekho
WHERE year BETWEEN 2015 AND 2023
GROUP BY year
ORDER BY year;

-- 11.All cars details between 2015 to 2023,Complete list
SELECT *
FROM car_dekho
WHERE year BETWEEN 2015 and 2023;