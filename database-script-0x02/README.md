# Airbnb Database – Seed Data

This file provides sample data for the Airbnb-like platform to simulate real-world usage.

## Tables Seeded

### 1. users
Contains three users with basic information.

### 2. properties
Each property is linked to a user (host). Three listings are included:
- A forest cottage
- A modern city loft
- A beach bungalow

### 3. bookings
Shows booking activity across users and properties, with various statuses (`confirmed`, `pending`).

### 4. reviews
Provides feedback for completed bookings. Each review is tied to a booking.

---

## Usage

You can run this script after initializing your schema:

```bash
psql -d alx-airbnb-database -f seed.sql
