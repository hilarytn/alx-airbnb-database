-- INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT 
    bookings.id AS booking_id,
    users.id AS user_id,
    users.name AS user_name,
    bookings.property_id,
    bookings.check_in,
    bookings.check_out
FROM 
    bookings
INNER JOIN 
    users ON bookings.user_id = users.id;

-- LEFT JOIN: Retrieve all properties and their reviews, including properties with no reviews
SELECT 
    properties.id AS property_id,
    properties.title,
    reviews.id AS review_id,
    reviews.rating,
    reviews.comment
FROM 
    properties
LEFT JOIN 
    reviews ON properties.id = reviews.property_id;

-- FULL OUTER JOIN: Retrieve all users and all bookings, even if there's no link between them
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.check_in,
    bookings.check_out
FROM 
    users
FULL OUTER JOIN 
    bookings ON users.id = bookings.user_id;
