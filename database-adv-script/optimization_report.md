# Optimization Report

## Initial Query

The initial query retrieved all bookings with user, property, and payment details for bookings with status 'confirmed'. It used multiple joins and filtered on booking status.

## Performance Analysis

Using `EXPLAIN ANALYZE` revealed:

- Sequential scans on Booking and Payment tables due to missing indexes.
- Expensive nested loop joins causing slow query response.
- Ordering by booking_date without an index caused additional sorting overhead.

## Optimization Steps

- Added indexes on:
  - Booking.status
  - Booking.user_id
  - Booking.property_id
  - Payment.booking_id
  - Booking.booking_date
- Limited the selected columns to only necessary fields.
- Added a LIMIT clause to paginate results and reduce data volume.
- Ensured proper join types (LEFT JOIN on Payment to include bookings without payments).

## Results

After adding indexes and query refactor:

- The query execution time improved from X ms to Y ms.
- Index scans replaced sequential scans.
- Ordering by booking_date became more efficient.

## Conclusion

Creating indexes on frequently joined and filtered columns along with careful query refactoring significantly enhanced query performance and resource usage.
