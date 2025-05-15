# Join Queries – Airbnb Database

##  INNER JOIN – Bookings and Users
SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.id AS user_id,
    u.name AS user_name,
    u.email
FROM 
    bookings b
INNER JOIN 
    users u ON b.user_id = u.id;


##  LEFT JOIN – Properties and Reviews
SELECT 
    p.id AS property_id,
    p.title,
    p.location,
    r.id AS review_id,
    r.rating,
    r.comment
FROM 
    properties p
LEFT JOIN 
    reviews r ON p.id = r.property_id;

##  FULL OUTER JOIN – Users and Bookings
sql
Copy
Edit

SELECT 
    u.id AS user_id,
    u.name AS user_name,
    b.id AS booking_id,
    b.start_date,
    b.property_id
FROM 
    users u
FULL OUTER JOIN 
    bookings b ON u.id = b.user_id;



# Subqueries – Airbnb Database

## Non-Correlated Subquery
Find all properties with an average rating > 4.0.

## Correlated Subquery
Find users who have made more than 3 bookings.
# Aggregations and Window Functions – Airbnb Database

## Total Bookings by User
Uses `COUNT` and `GROUP BY` to find how many bookings each user has made.

## Ranking Properties
Uses `RANK()` window function to rank properties based on total bookings.
