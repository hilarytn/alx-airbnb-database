SELECT 
    b.id AS booking_id,
    b.booking_date,
    b.status,
    
    u.id AS user_id,
    u.name AS user_name,
    u.email AS user_email,
    
    p.id AS property_id,
    p.title AS property_title,
    p.location AS property_location,
    p.price AS property_price,
    
    pay.id AS payment_id,
    pay.amount AS payment_amount,
    pay.payment_date
FROM Booking b
JOIN User u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
LEFT JOIN Payment pay ON pay.booking_id = b.id
WHERE b.status = 'confirmed'
ORDER BY b.booking_date DESC;
