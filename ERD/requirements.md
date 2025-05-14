# ER Diagram Requirements

## Entities and Attributes

- **User:** id (PK), name, email, password, created_at
- **Property:** id (PK), user_id (FK), title, description, location, price_per_night, created_at
- **Booking:** id (PK), user_id (FK), property_id (FK), start_date, end_date, status, created_at
- **Review:** id (PK), booking_id (FK), rating, comment, created_at

## Relationships

- One user can own many properties
- One user can make many bookings
- One property can have many bookings
- Each booking belongs to one property and one user
- Each booking can have one review

## Diagram

[see diagram.png](../../Downloads/airbnb-er-diagram.drawio)
