# Database Normalization to 3NF

## Objective

This document explains how the `alx-airbnb-database` schema has been normalized to **Third Normal Form (3NF)** to reduce redundancy and ensure data integrity.

---

## Step 1: First Normal Form (1NF)

**Rules:**
- Atomic values (no repeating groups or arrays).
- Each record is unique.

✅ All our tables (users, properties, bookings, reviews) follow 1NF because:
- Every field holds a single value.
- There are no multi-valued attributes.
- Each table has a primary key ensuring uniqueness.

---

## Step 2: Second Normal Form (2NF)

**Rules:**
- Be in 1NF.
- No partial dependencies (non-key attributes must depend on the whole primary key).

✅ Our schema adheres to 2NF:
- All tables with composite keys (none in this schema) would have been evaluated for full functional dependency.
- `booking.user_id` and `booking.property_id` depend entirely on the primary key `booking.id`, not a part of it.

---

## Step 3: Third Normal Form (3NF)

**Rules:**
- Be in 2NF.
- No transitive dependencies (non-key attributes should depend only on the primary key).

✅ All tables satisfy 3NF:
- In `properties`, fields like `title`, `price_per_night`, and `location` depend only on `id`.
- In `bookings`, fields like `start_date`, `end_date`, and `status` depend only on `id`, not indirectly through another non-key.
- No derived or duplicated data exists (e.g., we don't store user name inside booking).

---

## Final Assessment

The schema is in **Third Normal Form (3NF)** and:
- Eliminates redundancy.
- Maintains referential integrity via foreign keys.
- Is optimized for consistent updates and inserts.

No changes to the table structure were required as the initial design already adhered to normalization principles.

---

