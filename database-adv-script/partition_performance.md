# Partitioning Performance Report

## Objective
Implement range partitioning on the `Booking` table based on `start_date` to optimize queries on large datasets.

## Implementation
- Renamed original `Booking` table.
- Created a partitioned `Booking` table partitioned by range on `start_date`.
- Created yearly partitions (e.g., `Booking_2024`, `Booking_2025`).
- Migrated existing data to partitions.
- Added indexes on partition tables for faster access.

## Performance Testing
- Query fetching bookings within a specific date range now only scans relevant partitions.
- `EXPLAIN ANALYZE` shows a significant reduction in scanned rows and total execution time.
- For example, querying bookings for June 2024 touched only the `Booking_2024` partition rather than the whole table.

## Conclusion
Partitioning improved query efficiency by pruning irrelevant partitions during scans, reducing IO and CPU usage, thus speeding up query response times on large datasets.
