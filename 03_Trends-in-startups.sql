-- 1. Getting started, take a look at the startups table:
SELECT * 
FROM startups;

-- 2. Calculate the total number of companies in the table.
SELECT COUNT(*) AS num_of_companies
FROM startups;

-- 3. We want to know the total value of all companies in this table.
SELECT SUM(valuation) AS total_value
FROM startups;

-- 4. What is the highest amount raised by a startup?
SELECT MAX(raised)
FROM startups;

-- 5. Highest amount of money raised during ‘Seed’ stage.
SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

-- 6. In what year was the oldest company on the list founded?
SELECT MIN(founded)
FROM startups;

-- 7. Return the average valuation.
SELECT AVG(valuation) AS avg_valuation
FROM startups;

-- 8. Return the average valuation, in each category.
SELECT category, AVG(valuation) AS avg_valuation
FROM startups
GROUP BY category; 

-- 9. Round the averages to two decimal places.
SELECT category, ROUND(AVG(valuation), 2) AS avg_valuation
FROM startups
GROUP BY category; 

-- 10. Order the list from highest averages to lowest.
SELECT category, ROUND(AVG(valuation), 2) AS avg_valuation
FROM startups
GROUP BY 1
ORDER BY 2 DESC; 

-- 11. Return the name of each category with the total number of companies that belong to it.
SELECT category, COUNT(*)
FROM startups
GROUP BY category;

-- 12. Next, filter the result to only include categories that have more than three companies in them.
SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3;

-- 13. What is the average size of a startup in each location?
SELECT location, AVG(employees)
FROM startups
GROUP BY location;

-- 14. What is the average size of a startup in each location, with average sizes above 500?
SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;
