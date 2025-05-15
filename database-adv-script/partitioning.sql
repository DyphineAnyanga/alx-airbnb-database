-- Step 1: Rename original table to preserve data (if needed)
ALTER TABLE bookings RENAME TO bookings_backup;

-- Step 2: Create partitioned table by RANGE on start_date (monthly partitions)
CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    created_at TIMESTAMP DEFAULT NOW()
) PARTITION BY RANGE (start_date);

-- Step 3: Create partitions (e.g., for Jan–June 2024)
CREATE TABLE bookings_2024_01 PARTITION OF bookings
    FOR VALUES FROM ('2024-01-01') TO ('2024-02-01');

CREATE TABLE bookings_2024_02 PARTITION OF bookings
    FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');

CREATE TABLE bookings_2024_03 PARTITION OF bookings
    FOR VALUES FROM ('2024-03-01') TO ('2024-04-01');

CREATE TABLE bookings_2024_04 PARTITION OF bookings
    FOR VALUES FROM ('2024-04-01') TO ('2024-05-01');

CREATE TABLE bookings_2024_05 PARTITION OF bookings
    FOR VALUES FROM ('2024-05-01') TO ('2024-06-01');

-- Optional: Insert old data (if any) into new partitioned table
-- INSERT INTO bookings (...) SELECT ... FROM bookings_backup;
