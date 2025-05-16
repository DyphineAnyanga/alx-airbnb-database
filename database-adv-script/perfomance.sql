-- perfomance.sql
-- Initial query to retrieve all bookings with related user, property, and payment details (no WHERE conditions)

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
LEFT JOIN payments pay ON b.id = pay.booking_id;

