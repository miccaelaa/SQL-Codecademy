-- 1. Start by getting a feel for the nomnom table:
SELECT *
FROM nomnom;

-- 2. What are the distinct neighborhoods?
SELECT DISTINCT neighborhood
FROM nomnom;

-- 3. What are the distinct cuisine types?
SELECT DISTINCT cuisine
FROM nomnom;

-- 4. Suppose we would like some Chinese takeout. What are our options?
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

-- 5. Return all the restaurants with reviews of 4 and above.
SELECT * 
FROM nomnom
WHERE review >= 4;

-- 6. Return all the restaurants that are Italian and $$$
SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
   AND price = '$$$';

-- 7. Return all the restaurants that contains the word 'meatball' in it
SELECT * 
FROM nomnom 
WHERE name LIKE '%meatball%';

-- 8. Find all the close by spots in Midtown, Downtown or Chinatown.
SELECT * 
FROM nomnom
WHERE neighborhood = 'Midtown'
   OR neighborhood = 'Downtown'
   OR neighborhood = 'Chinatown';

-- 9. Find all the health grade pending restaurants (empty values).
SELECT * 
FROM nomnom 
WHERE health IS NULL;

-- 10. Create a Top 10 Restaurants Ranking based on reviews.
SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 10;

-- 11. Use a CASE statement to change the rating system to:
   -- review > 4.5 is Extraordinary
   -- review > 4 is Excellent
   -- review > 3 is Good
   -- review > 2 is Fair
   -- Everything else is Poor
SELECT name,
 CASE 
  WHEN review > 4.5 THEN 'Extraordinary'
  WHEN review > 4 THEN 'Excellent'
  WHEN review > 3 THEN 'Good'
  WHEN review > 2 THEN 'Fair'
  ELSE 'Poor'
END AS 'Review'
FROM nomnom;
