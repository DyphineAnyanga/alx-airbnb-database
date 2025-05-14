# Airbnb Database Schema

This schema defines the relational structure for an Airbnb-like booking platform.

## Tables and Relationships

### 1. users
Stores all registered users.
- `id` (PK)
- `name`, `email`, `password`, `created_at`

### 2. properties
Holds listings created by users.
- `id` (PK)
- `user_id` (FK → users)
- `title`, `description`, `location`, `price_per_night`, `created_at`

### 3. bookings
Stores booking records between users and properties.
- `id` (PK)
- `user_id` (FK → users)
- `property_id` (FK → properties)
- `start_date`, `end_date`, `status`, `created_at`

### 4. reviews
Captures user feedback for bookings.
- `id` (PK)
- `booking_id` (FK → bookings)
- `rating`, `comment`, `created_at`

## Constraints & Indexes
- Foreign key constraints enforce referential integrity.
- Indexes on emails, locations, and booking dates improve query performance.

## Normalization
All tables follow 3NF principles. See `../normalization.md` for more.

