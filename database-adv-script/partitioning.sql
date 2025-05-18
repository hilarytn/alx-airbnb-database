-- Rename the old table (optional backup)
ALTER TABLE Booking RENAME TO Booking_old;

-- Create the new partitioned Booking table
CREATE TABLE Booking (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(50),
    booking_date TIMESTAMP,
    -- other columns...
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES "User"(id),
    CONSTRAINT fk_property FOREIGN KEY (property_id) REFERENCES Property(id)
) PARTITION BY RANGE (start_date);

-- Step 2: Create partitions

CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Add more partitions as needed

-- Step 3: Migrate data from old table (if any)
INSERT INTO Booking (id, user_id, property_id, start_date, end_date, status, booking_date)
SELECT id, user_id, property_id, start_date, end_date, status, booking_date
FROM Booking_old;

-- Step 4: Drop old table if no longer needed
-- DROP TABLE Booking_old;

-- Step 5: Create indexes on partitions (optional but recommended)
CREATE INDEX idx_booking_2024_start_date ON Booking_2024(start_date);
CREATE INDEX idx_booking_2025_start_date ON Booking_2025(start_date);

-- Step 6: Example test query to fetch bookings by date range
EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE start_date >= '2024-06-01' AND start_date < '2024-07-01'
ORDER BY start_date;
