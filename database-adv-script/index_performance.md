# Index Optimization for ALX Airbnb Database

## Objective
Improve query performance by creating indexes on high-usage columns in the `User`, `Booking`, and `Property` tables.

---

## Targeted Columns and Rationale

| Table     | Column        | Reason for Indexing                        |
|-----------|---------------|--------------------------------------------|
| users     | email         | Frequently queried in login/auth          |
| bookings  | user_id       | Commonly used in JOINs with `users`       |
| bookings  | property_id   | Frequently used in JOINs and filtering     |
| properties| city          | Used in search filters                     |
| properties| price         | Used in ORDER BY and range filters         |

---

## SQL Index Creation Commands (`database_index.sql`)

```sql
-- Create index on users.email
CREATE INDEX idx_users_email ON users(email);

-- Create index on bookings.user_id
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on bookings.property_id
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create index on properties.city
CREATE INDEX idx_properties_city ON properties(city);

-- Create index on properties.price
CREATE INDEX idx_properties_price ON properties(price);

-- Measure performance before indexing
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 5;

-- Add index
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Measure performance after indexing
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 5;
