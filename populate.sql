    INSERT INTO accommodation (accommodationid, name, type, price) VALUES
    (1, 'Hotel Sunshine', 'Hotel', 150.00),
    (2, 'Mountain Lodge', 'Lodge', 120.00),
    (3, 'Hilton New York', 'Hotel', 250.00),
    (4, 'Marriott Miami', 'Hotel', 180.50),
    (5, 'Ritz-Carlton Los Angeles', 'Resort', 350.75);
    

    INSERT INTO admin (adminid, name, role) VALUES
    (1, 'Admin User', 'SuperAdmin'),
    (2, 'John Doe', 'Super Admin'),
    (3, 'Jane Smith', 'Admin'),
    (4, 'Alice Johnson', 'Moderator'),
    (5, 'Bob Brown', 'User Support');
    

    INSERT INTO agencies (agency_id, agency_name, agency_email, agency_phone_no, agency_address, established_date, agency_service) VALUES
    (1, 'Septi Travel Co.', 'contact@septiagency.com', '1112223333', 'Main St 45', '2010-05-12', 'Full Service'),
    (2, 'World Explorer', 'info@explorer.com', '2223334444', 'Explorer Blvd 10', '2015-03-25', 'Flights');
    

    INSERT INTO booking (bookingid, customerid, agentid, date, status, totalprice) VALUES
    (1, 1, 1, '2025-06-05', 'Confirmed', 1200.00),
    (2, 2, NULL, '2025-07-10', 'Pending', 1500.00);
    

    INSERT INTO bookingaccommodation (bookingid, accommodationid) VALUES
    (1, 1),
    (2, 2);
    

    INSERT INTO bookingflight (bookingid, flightid) VALUES
    (1, 1),
    (2, 2);
    

    INSERT INTO bookingtransfer (bookingid, transferid) VALUES
    (1, 1),
    (2, 2);
    

    INSERT INTO customer (customerid, name, email, phone, loyaltypoints) VALUES
    (1, 'Marius Marin', 'marius@example.com', '1234567890', 1500),
    (2, 'Septi Iusan', 'septi@example.com', '9876543210', 2000),
    (3, 'Vice Iusan', 'vice@example.com', '4561237890', 500),
    (4, 'Victor Williams', 'victor@example.com', '7894561230', 1000),
    (5, 'Faizan Davis', 'faizan@example.com', '3216549870', 800);
    

    INSERT INTO destinations (destination_id, destination_address, region, country) VALUES
    (1, 'Plaça de Catalunya', 'Barcelona', 'Spain'),
    (2, 'Times Square', 'New York', 'USA'),
    (3, 'Shibuya Crossing', 'Tokyo', 'Japan');
    

    INSERT INTO feedback (feedbackid, customerid, bookingid, rating, comments) VALUES
    (1, 1, 1, 5, 'Great experience!'),
    (2, 2, 2, 4, 'Very good service.');
    

    INSERT INTO flight (flightid, airline, source, destination, date, seatcapacity, price) VALUES
    (1, 'Airline A', 'New York', 'London', '2025-06-01', 200, 500.00),
    (2, 'Airline B', 'Paris', 'Tokyo', '2025-06-02', 180, 700.00),
    (3, 'American Airlines', 'New York', 'Los Angeles', '2025-03-01', 180, 299.99),
    (4, 'Delta Airlines', 'Chicago', 'Miami', '2025-03-02', 200, 249.50),
    (5, 'United Airlines', 'San Francisco', 'Houston', '2025-03-03', 150, 189.75);
    

    INSERT INTO holidaypackage (packageid, name, discount) VALUES
    (1, 'Summer Barcelona', 10.00),
    (2, 'Winter Swizerland', 15.00),
    (3, 'Summer Escape', 10.00),
    (4, 'Winter Wonderland', 15.00),
    (5, 'Romantic Getaway', 12.50);
    

    INSERT INTO packageservice (packageid, servicetype, serviceid) VALUES
    (1, 'Flight', 1),
    (2, 'Accommodation', 2);
    

    INSERT INTO payment (paymentid, bookingid, amount, paymentmethod, paymentdate, status) VALUES
    (1, 1, 1200.00, 'Credit Card', '2025-06-01', 'Completed'),
    (2, 2, 1500.00, 'PayPal', '2025-07-10', 'Pending'),
    (3, 1, 1200.00, 'Bank Transfer', '2025-06-02', 'Completed');
    

    INSERT INTO promotions (promotion_id, promotion_name, discount_percentage, start_date, end_date, is_loyalty_exclusive) VALUES
    (1, 'Summer Sale', 10.00, '2025-06-01', '2025-07-01', TRUE),
    (2, 'Winter Escape', 15.00, '2025-12-01', '2026-01-15', FALSE);
    

    INSERT INTO roles (role_id, role_name) VALUES
    (1, 'Admin'),
    (2, 'Customer'),
    (3, 'Agent');
    

    INSERT INTO taxitransfer (transferid, type, price) VALUES
    (1, 'Private', 50.00),
    (2, 'Shared', 30.00),
    (3, 'Standard Sedan', 25.00),
    (4, 'Luxury Sedan', 50.00),
    (5, 'SUV', 40.00);
    

    INSERT INTO travelagent (agentid, name, email) VALUES
    (1, 'Doctor Mani', 'mani.agent@example.com'),
    (2, 'Principe Fernando', 'fernando.broker@example.com'),
    (3, 'David Wilson', 'david.wilson@example.com'),
    (4, 'Emma Brown', 'emma.brown@example.com'),
    (5, 'Frank Martin', 'frank.martin@example.com');
    