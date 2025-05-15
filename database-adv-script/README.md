# Join Queries – Airbnb Database

## INNER JOIN
Query: Retrieves all bookings and the respective users who made them.

## LEFT JOIN
Query: Retrieves all properties and their reviews. Includes properties with no reviews.

## FULL OUTER JOIN
Query: Retrieves all users and bookings, including:
- Users with no bookings
- Bookings not linked to a user

Note: Implemented using `UNION` since FULL OUTER JOIN is not supported in MySQL.
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
