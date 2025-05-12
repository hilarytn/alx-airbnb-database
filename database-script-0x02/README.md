# 🧪 Sample Data – Airbnb Database

## 📁 Directory: database-script-0x02

This folder contains SQL scripts for seeding the Airbnb database with realistic sample data.

---

## 📄 File: seed.sql

### ✅ Entities Covered

- Users (guests, host, admin)
- Properties (2 listings)
- Bookings (multiple by a guest)
- Payments (corresponding to bookings)
- Reviews (from the guest to properties)
- Messages (between guest and host)

### 💡 Notes

- UUIDs are used as primary keys to maintain uniqueness
- Data is designed to reflect real-world scenarios (multiple users, multiple bookings, etc.)
- Logical relationships are preserved between foreign keys
