-- 1. Total number of bookings made by each user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- Query 2: Rank properties based on total number of bookings using RANK()
SELECT property_id,
       COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_by_bookings
FROM bookings
GROUP BY property_id
ORDER BY rank_by_bookings;

-- Query 3: Assign a unique row number to properties based on total bookings using ROW_NUMBER()
SELECT property_id,
       COUNT(*) AS total_bookings,
       ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS row_number_by_bookings
FROM bookings
GROUP BY property_id
ORDER BY row_number_by_bookings;