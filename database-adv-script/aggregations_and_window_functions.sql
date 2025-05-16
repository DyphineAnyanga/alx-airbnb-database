-- 1. Total number of bookings made by each user using COUNT and GROUP BY
SELECT 
    user_id, 
    COUNT(*) AS total_bookings
FROM 
    bookings
GROUP BY 
    user_id
ORDER BY 
    total_bookings DESC;


-- 2. Rank properties based on the total number of bookings using RANK window function
SELECT
    p.id AS property_id,
    p.title,
    COUNT(b.id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.id) DESC) AS booking_rank
FROM 
    properties p
LEFT JOIN 
    bookings b ON p.id = b.property_id
GROUP BY 
    p.id, p.title
ORDER BY 
    booking_rank;
