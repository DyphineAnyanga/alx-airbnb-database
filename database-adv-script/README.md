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


#  Aggregations and Window Functions

This SQL script demonstrates the use of **aggregation functions** and **window functions** to analyze user behavior and property popularity in the Airbnb database.

##  Objectives

- Count the total number of bookings made by each user.
- Rank properties based on how many bookings they have received using window functions.

##  What’s Included

### 1. User Booking Count (Aggregation)
- Uses `COUNT()` and `GROUP BY` to calculate the number of bookings made by each user.
- Helps identify power users and engagement trends.

### 2. Property Booking Rank (Window Functions)
- `RANK()`: Ranks properties based on total bookings. Ties receive the same rank.
- `ROW_NUMBER()`: Assigns a unique number to each property based on booking count, without considering ties.

##  SQL Features Used

- `COUNT()`
- `GROUP BY`
- `ORDER BY`
- `JOIN`
- `RANK() OVER (ORDER BY ...)`
- `ROW_NUMBER() OVER (ORDER BY ...)`

##  File

- `aggregations_and_window_functions.sql`

##  Example Use Cases

- Generate user engagement reports.
- Create leaderboards of the most booked properties.
- Power dashboards for operational insights.

---

