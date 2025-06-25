
-- Show all bookings and related details for a specific customer
SELECT b.bookingid, f.airline, a.name AS accommodation_name, d.destination_address, b.totalprice
FROM booking b
JOIN bookingflight bf ON b.bookingid = bf.bookingid
JOIN flight f ON bf.flightid = f.flightid
JOIN bookingaccommodation ba ON b.bookingid = ba.bookingid
JOIN accommodation a ON ba.accommodationid = a.accommodationid
JOIN destinations d ON f.destination = d.destination_id
WHERE b.customerid = 5;


-- ===============================


-- Get top 6 most-booked destinations
SELECT d.destination_address, COUNT(b.bookingid) AS bookings_count
FROM booking b
JOIN bookingflight bf ON b.bookingid = bf.bookingid
JOIN flight f ON bf.flightid = f.flightid
JOIN destinations d ON f.destination = d.destination_id
GROUP BY d.destination_address
ORDER BY bookings_count DESC
LIMIT 6;


-- ===============================


-- Categorize bookings by price level
SELECT bookingid, totalprice,
    CASE
        WHEN totalprice < 1000 THEN 'Budget'
        WHEN totalprice BETWEEN 1000 AND 3000 THEN 'Standard'
        ELSE 'Luxury'
    END AS booking_category
FROM booking;


-- ===============================


-- Flight price statistics: min, max, avg
SELECT
    MIN(price) AS cheapest_flight,
    MAX(price) AS most_expensive_flight,
    AVG(price) AS average_flight_price
FROM flight;


-- ===============================


-- Show customer and their role
SELECT c.customerid, c.name AS customer_name, r.role_name
FROM customer c
JOIN roles r ON c.customerid = c.customerid  -- Assuming 1:1 role assignment by customerid
WHERE c.customerid = 5;
