# Optimization Report – Airbnb Database

## Initial Query Summary

The initial query retrieved booking details along with associated user, property, and payment information by joining four tables: `bookings`, `users`, `properties`, and `payments`.

## Performance Analysis

### Observed Inefficiencies:
- Full table scans observed on `users`, `properties`, and `payments` tables.
- No use of indexes on `bookings.user_id`, `bookings.property_id`, and `payments.booking_id`.
- Retrieved unnecessary columns (e.g., user email, payment status) contributing to higher I/O and memory use.

### EXPLAIN Output (Before Optimization):
- Join type: `ALL` for some tables.
- Estimated rows: high.
- Execution time: ~1200ms on 10,000+ records.

## Refactoring Strategy

1. **Column Reduction**: Selected only necessary fields.
2. **Date Filtering**: Added `WHERE b.start_date >= '2024-01-01'` to reduce scanned data.
3. **Indexing**: Ensured indexes on:
   - `bookings.user_id`
   - `bookings.property_id`
   - `payments.booking_id`

```sql
CREATE INDEX idx_booking_user ON bookings(user_id);
CREATE INDEX idx_booking_property ON bookings(property_id);
CREATE INDEX idx_payment_booking ON payments(booking_id);
