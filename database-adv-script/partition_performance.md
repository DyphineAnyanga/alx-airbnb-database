# Partitioning Performance Report – Bookings Table

## Objective
To improve the query performance of the `bookings` table by partitioning it by `start_date`.

## Partitioning Strategy
We applied **range partitioning** based on the `start_date` column. Monthly partitions were created for January to May 2024.

## Query Performance Test
We tested the following query before and after partitioning:

```sql
SELECT * FROM bookings WHERE start_date BETWEEN '2024-03-01' AND '2024-03-31';
