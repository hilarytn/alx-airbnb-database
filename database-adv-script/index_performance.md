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
