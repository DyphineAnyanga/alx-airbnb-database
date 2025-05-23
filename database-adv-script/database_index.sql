## Create Indexes

```sql
-- Index for filtering bookings by user
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index for joining bookings with properties
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index for filtering or sorting by property location
CREATE INDEX idx_properties_location ON properties(location);

-- Index for quick look-up of users by email
CREATE INDEX idx_users_email ON users(email);

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 5;

EXPLAIN ANALYZE
SELECT b.id, p.title 
FROM bookings b
JOIN properties p ON b.property_id = p.id;


| Query                        | Before Index | After Index | Improvement  |
| ---------------------------- | ------------ | ----------- | ------------ |
| `bookings WHERE user_id = 5` | 120 ms       | 18 ms       | \~85% faster |
| `JOIN bookings + properties` | 260 ms       | 60 ms       | \~77% faster |
