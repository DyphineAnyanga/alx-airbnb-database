-- Insert sample users
INSERT INTO users (name, email, password)
VALUES 
  ('Alice Johnson', 'alice@example.com', 'hashed_password_1'),
  ('Bob Smith', 'bob@example.com', 'hashed_password_2'),
  ('Charlie Kim', 'charlie@example.com', 'hashed_password_3');

-- Insert sample properties
INSERT INTO properties (user_id, title, description, location, price_per_night)
VALUES
  (1, 'Cozy Cottage in the Woods', 'A beautiful and quiet retreat.', 'Nairobi', 55.00),
  (2, 'Modern Loft Apartment', 'City-center loft, great views.', 'Mombasa', 120.00),
  (1, 'Beachside Bungalow', 'Steps away from the beach.', 'Diani', 85.50);

-- Insert sample bookings
INSERT INTO bookings (user_id, property_id, start_date, end_date, status)
VALUES
  (2, 1, '2025-06-01', '2025-06-05', 'confirmed'),
  (3, 2, '2025-07-10', '2025-07-15', 'pending'),
  (1, 3, '2025-08-20', '2025-08-25', 'confirmed');

-- Insert sample reviews
INSERT INTO reviews (booking_id, rating, comment)
VALUES
  (1, 5, 'Absolutely loved the stay! Peaceful and clean.'),
  (3, 4, 'Great location and host was helpful.');
