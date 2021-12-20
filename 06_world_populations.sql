-- Select a sample of the table

SELECT *
FROM population_years
LIMIT 20;

-- 1. What years are covered by the dataset?

SELECT DISTINCT year 
FROM population_years;

-- 2. What is the largest population size for Gabon in this dataset?

SELECT MAX(population) AS max_population_gabon
FROM population_years
WHERE country = 'Gabon';

-- 3. What were the 10 lowest population countries in 2005?

SELECT country, population
FROM population_years
WHERE year = 2005
ORDER BY population DESC
LIMIT 10;

-- 4. What are all the distinct countries with a population of over 100 million in the year 2010?

SELECT DISTINCT country
FROM population_years
WHERE population > 100
 AND year = 2010;

 -- 5. How many countries in this dataset have the word “Islands” in their name?

SELECT COUNT(DISTINCT country)
FROM population_years
WHERE country LIKE ('%Islands%');

-- 6. What is the difference in population between 2000 and 2010 in Indonesia?

SELECT *
FROM population_years
WHERE country = 'Indonesia' 
 AND (year = 2000 OR year = 2010);

SELECT (
  SELECT population
  FROM population_years
  WHERE country = 'Indonesia' 
   AND year = 2010) -
   (
  SELECT population
  FROM population_years
  WHERE country = 'Indonesia' 
   AND year = 2000) AS diff_population_indonesia;
