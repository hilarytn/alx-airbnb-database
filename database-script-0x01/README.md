# 🗃️ Schema Definition – Airbnb Database

## 📁 Directory: database-script-0x01

This directory contains the SQL script to define the relational schema for the ALX Airbnb Database project.

---

## 📄 File: schema.sql

### 🛠️ Description
This SQL script creates the following tables:

- `Users`
- `Properties`
- `Bookings`
- `Payments`
- `Reviews`
- `Messages`

Each table includes:
- Proper data types
- Primary and foreign keys
- CHECK constraints
- Timestamps
- Indexes for performance on frequently queried columns (like `email`, `property_id`, `booking_id`)

---

## 🧩 Schema Highlights

- UUIDs used as Primary Keys for uniqueness
- ENUM-like behavior using `CHECK` constraints
- Foreign Key relationships ensure referential integrity
- Indexed fields to optimize queries
