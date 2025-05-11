# 📦 Database Normalization – Airbnb Project

## 🎯 Objective
Ensure that the Airbnb database schema is normalized up to the **Third Normal Form (3NF)** for optimal efficiency, data integrity, and elimination of redundancy.

---

## 🔍 Normalization Process

### ✅ First Normal Form (1NF)
**Criteria:**  
- Atomic values (no multivalued or composite attributes)  
- Each column contains only one type of data  
- Each record is unique

**Applied:**  
- All tables have atomic attributes.  
- No multivalued fields (e.g., phone numbers or emails).  
- Each table has a primary key (`user_id`, `property_id`, `booking_id`, etc.) ensuring uniqueness.

✅ **1NF Achieved**

---

### ✅ Second Normal Form (2NF)
**Criteria:**  
- Must meet all requirements of 1NF  
- All non-key attributes must be fully functionally dependent on the **entire primary key** (no partial dependency)

**Applied:**  
- All tables use a single-column primary key (UUIDs), so no composite keys exist.  
- No partial dependencies in any table.

✅ **2NF Achieved**

---

### ✅ Third Normal Form (3NF)
**Criteria:**  
- Must meet all requirements of 2NF  
- No transitive dependencies (non-key attributes should not depend on other non-key attributes)

**Check Examples:**
- **User Table:** `email`, `first_name`, etc., depend only on `user_id`. No transitive dependencies.
- **Property Table:** `location`, `pricepernight` depend directly on `property_id`.
- **Booking Table:** `start_date`, `status`, etc., depend only on `booking_id`, not indirectly through `user_id` or `property_id`.
- **Payment Table:** All fields directly relate to `payment_id`.
- **Review Table:** `rating`, `comment` are dependent on `review_id`.
- **Message Table:** `message_body` and `sent_at` relate directly to `message_id`.

✅ **3NF Achieved**

---

## 🔄 Summary of Changes (if any)
No changes were necessary, as the initial design already adhered to normalization principles. However, normalization was verified across all tables.

---

## ✅ Final Status
All entities in the Airbnb database schema are fully normalized to **Third Normal Form (3NF)**.

This ensures:
- Minimal redundancy
- High data integrity
- Scalable, efficient querying
