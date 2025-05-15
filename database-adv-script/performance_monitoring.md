# Performance Monitoring Report

## Objective
To monitor and improve query performance using tools like `EXPLAIN ANALYZE` and schema/index optimizations.

## Queries Analyzed

### Query 1 – Fetch bookings in March 2024

```sql
SELECT * FROM bookings WHERE start_date BETWEEN '2024-03-01' AND '2024-03-31';
