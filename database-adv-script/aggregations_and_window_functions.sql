-- Query 1: Total number of bookings made by each user
SELECT 
    u.id AS user_id,
    u.name AS user_name,
    COUNT(b.id) AS total_bookings
FROM 
    users u
LEFT JOIN 
    bookings b ON u.id = b.user_id
GROUP BY 
    u.id, u.name
ORDER BY 
    total_bookings DESC;

-- Query 2: Rank properties by total number of bookings using RANK()
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

-- Query 3: Rank properties by total number of bookings using ROW_NUMBER()
SELECT
    p.id AS property_id,
    p.title,
    COUNT(b.id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.id) DESC) AS booking_row_number
FROM 
    properties p
LEFT JOIN 
    bookings b ON p.id = b.property_id
GROUP BY 
    p.id, p.title
ORDER BY 
    booking_row_number;
