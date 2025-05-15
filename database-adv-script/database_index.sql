| Table        | Column         | Usage Reason                          |
| ------------ | -------------- | ------------------------------------- |
| `users`      | `id`           | Used in JOIN with `bookings`          |
| `bookings`   | `user_id`      | JOIN with `users`, WHERE filters      |
| `bookings`   | `property_id`  | JOIN with `properties`                |
| `bookings`   | `booking_date` | Likely used in WHERE or range queries |
| `properties` | `id`           | JOIN with `bookings`, reviews         |
-- Indexes for Users table
CREATE INDEX idx_users_id ON users(id);

-- Indexes for Bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_booking_date ON bookings(booking_date);

-- Indexes for Properties table
CREATE INDEX idx_properties_id ON properties(id);
EXPLAIN SELECT * FROM bookings WHERE user_id = 5;
-- Run after executing CREATE INDEX statements
EXPLAIN SELECT * FROM bookings WHERE user_id = 5;
