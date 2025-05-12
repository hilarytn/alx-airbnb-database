-- Insert Users
INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('a1b2c3d4-e5f6-7890-abcd-1234567890ab', 'Amara', 'Okoro', 'amara.okoro@example.com', 'hashed_pwd_1', '08011223344', 'guest'),
('b2c3d4e5-f6a7-8901-bcde-2345678901bc', 'Chinedu', 'Eze', 'chinedu.eze@example.com', 'hashed_pwd_2', '08022334455', 'host'),
('c3d4e5f6-a789-0123-cdef-3456789012cd', 'Fatima', 'Bello', 'fatima.bello@example.com', 'hashed_pwd_3', NULL, 'admin');

-- Insert Properties
INSERT INTO Properties (property_id, host_id, name, description, location, pricepernight)
VALUES
('p1a2b3c4-d5e6-7890-aaaa-111122223333', 'b2c3d4e5-f6a7-8901-bcde-2345678901bc', 'Seaside Villa', 'A spacious villa by the beach.', 'Lagos, Nigeria', 250.00),
('p2b3c4d5-e6f7-8901-bbbb-222233334444', 'b2c3d4e5-f6a7-8901-bcde-2345678901bc', 'Urban Studio', 'Cozy studio in the heart of Abuja.', 'Abuja, Nigeria', 100.00);

-- Insert Bookings
INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('bk1d2e3f-4567-8901-cccc-333344445555', 'p1a2b3c4-d5e6-7890-aaaa-111122223333', 'a1b2c3d4-e5f6-7890-abcd-1234567890ab', '2025-07-01', '2025-07-05', 1000.00, 'confirmed'),
('bk2e3f4g-5678-9012-dddd-444455556666', 'p2b3c4d5-e6f7-8901-bbbb-222233334444', 'a1b2c3d4-e5f6-7890-abcd-1234567890ab', '2025-08-10', '2025-08-12', 200.00, 'pending');

-- Insert Payments
INSERT INTO Payments (payment_id, booking_id, amount, payment_method)
VALUES
('pm1f2g3h-6789-0123-eeee-555566667777', 'bk1d2e3f-4567-8901-cccc-333344445555', 1000.00, 'credit_card'),
('pm2g3h4i-7890-1234-ffff-666677778888', 'bk2e3f4g-5678-9012-dddd-444455556666', 200.00, 'paypal');

-- Insert Reviews
INSERT INTO Reviews (review_id, property_id, user_id, rating, comment)
VALUES
('rv1h2i3j-8901-2345-gggg-777788889999', 'p1a2b3c4-d5e6-7890-aaaa-111122223333', 'a1b2c3d4-e5f6-7890-abcd-1234567890ab', 5, 'Amazing place! Clean, spacious, and great location.'),
('rv2i3j4k-9012-3456-hhhh-888899990000', 'p2b3c4d5-e6f7-8901-bbbb-222233334444', 'a1b2c3d4-e5f6-7890-abcd-1234567890ab', 4, 'Very convenient and affordable.');

-- Insert Messages
INSERT INTO Messages (message_id, sender_id, recipient_id, message_body)
VALUES
('ms1i2j3k-0123-4567-iiii-999900001111', 'a1b2c3d4-e5f6-7890-abcd-1234567890ab', 'b2c3d4e5-f6a7-8901-bcde-2345678901bc', 'Hello, I have a question about the Seaside Villa.'),
('ms2j3k4l-1234-5678-jjjj-000011112222', 'b2c3d4e5-f6a7-8901-bcde-2345678901bc', 'a1b2c3d4-e5f6-7890-abcd-1234567890ab', 'Sure! What would you like to know?');
