# Index Performance Analysis – Airbnb Database

## Identified High-Usage Columns

- `users.id` – used in JOINs
- `bookings.user_id`, `property_id`, `booking_date` – used in JOINs and WHERE clauses
- `properties.id` – used in JOINs

## Indexes Created

```sql
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_booking_date ON bookings(booking_date);

