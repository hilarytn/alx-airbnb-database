# Database Performance Monitoring and Refinement Report

## Objective
Continuously monitor query performance using EXPLAIN ANALYZE and refine the schema or indexes to improve efficiency.

---

## Step 1: Monitoring Frequently Used Queries

### Example Query 1: Fetch all confirmed bookings with user and property details

```sql
EXPLAIN ANALYZE
SELECT b.id, b.booking_date, u.name, p.title
FROM Booking b
JOIN User u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
WHERE b.status = 'confirmed'
ORDER BY b.booking_date DESC
LIMIT 50;
