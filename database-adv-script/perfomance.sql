-- perfomance.sql

-- Initial query retrieving all bookings along with user, property, and payment details
SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    b.status,

    u.id AS user_id,
    u.full_name,
    u.email,

    p.id AS property_id,
    p.title,
    p.location,

    pay.id AS payment_id,
    pay.amount,
    pay.status AS payment_status,
    pay.payment_date

FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id
WHERE b.status = 'confirmed' AND b.start_date >= '2024-01-01';

-- Analyze the query performance using EXPLAIN
EXPLAIN
SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    b.status,

    u.id AS user_id,
    u.full_name,
    u.email,

    p.id AS property_id,
    p.title,
    p.location,

    pay.id AS payment_id,
    pay.amount,
    pay.status AS payment_status,
    pay.payment_date

FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id
WHERE b.status = 'confirmed' AND b.start_date >= '2024-01-01';

-- Refactored query example: added filtering to reduce result set
-- Consider adding indexes on bookings(user_id), bookings(property_id), and payments(booking_id) for optimization

