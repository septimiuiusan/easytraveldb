
    CREATE TABLE accommodation (
        accommodationid SERIAL PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        type VARCHAR(50) NOT NULL,
        price NUMERIC(10,2) NOT NULL
    );
    

    CREATE TABLE admin (
        adminid SERIAL PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        role VARCHAR(50) NOT NULL
    );
    

    CREATE TABLE agencies (
        agency_id SERIAL PRIMARY KEY,
        agency_name VARCHAR(100) NOT NULL,
        agency_email VARCHAR(100) NOT NULL,
        agency_phone_no VARCHAR(15) NOT NULL,
        agency_address VARCHAR(120),
        established_date DATE,
        agency_service VARCHAR(255) NOT NULL
    );
    

    CREATE TABLE booking (
        bookingid SERIAL PRIMARY KEY,
        customerid INTEGER NOT NULL,
        agentid INTEGER,
        date DATE NOT NULL,
        status VARCHAR(50) NOT NULL,
        totalprice NUMERIC(10,2) NOT NULL,
        FOREIGN KEY (agentid) REFERENCES travelagent(agentid),
        FOREIGN KEY (customerid) REFERENCES customer(customerid)
    );
    

    CREATE TABLE bookingaccommodation (
        bookingid INTEGER,
        accommodationid INTEGER,
        PRIMARY KEY (bookingid, accommodationid),
        FOREIGN KEY (bookingid) REFERENCES booking(bookingid),
        FOREIGN KEY (accommodationid) REFERENCES accommodation(accommodationid)
    );
    

    CREATE TABLE bookingflight (
        bookingid INTEGER,
        flightid INTEGER,
        PRIMARY KEY (bookingid, flightid),
        FOREIGN KEY (bookingid) REFERENCES booking(bookingid),
        FOREIGN KEY (flightid) REFERENCES flight(flightid)
    );
    

    CREATE TABLE bookingtransfer (
        bookingid INTEGER,
        transferid INTEGER,
        PRIMARY KEY (bookingid, transferid),
        FOREIGN KEY (bookingid) REFERENCES booking(bookingid),
        FOREIGN KEY (transferid) REFERENCES taxitransfer(transferid)
    );
    

    CREATE TABLE customer (
        customerid SERIAL PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        email VARCHAR(100) NOT NULL,
        phone VARCHAR(15) NOT NULL,
        loyaltypoints INTEGER
    );
    

    CREATE TABLE destinations (
        destination_id SERIAL PRIMARY KEY,
        destination_address VARCHAR(255),
        region VARCHAR(100),
        country VARCHAR(100)
    );
    

    CREATE TABLE feedback (
        feedbackid SERIAL PRIMARY KEY,
        customerid INTEGER,
        bookingid INTEGER,
        rating INTEGER,
        comments TEXT,
        FOREIGN KEY (customerid) REFERENCES customer(customerid),
        FOREIGN KEY (bookingid) REFERENCES booking(bookingid)
    );
    

    CREATE TABLE flight (
        flightid SERIAL PRIMARY KEY,
        airline VARCHAR(100),
        source VARCHAR(100),
        destination VARCHAR(100),
        date DATE,
        seatcapacity INTEGER,
        price NUMERIC(10,2)
    );
    

    CREATE TABLE holidaypackage (
        packageid SERIAL PRIMARY KEY,
        name VARCHAR(100),
        discount NUMERIC(5,2)
    );
    

    CREATE TABLE packageservice (
        packageid INTEGER,
        servicetype VARCHAR(100),
        serviceid INTEGER,
        PRIMARY KEY (packageid, servicetype, serviceid),
        FOREIGN KEY (packageid) REFERENCES holidaypackage(packageid)
    );
    

    CREATE TABLE payment (
        paymentid SERIAL PRIMARY KEY,
        bookingid INTEGER,
        amount NUMERIC(10,2),
        paymentmethod VARCHAR(50),
        paymentdate DATE,
        status VARCHAR(50),
        FOREIGN KEY (bookingid) REFERENCES booking(bookingid)
    );
    

    CREATE TABLE promotions (
        promotion_id SERIAL PRIMARY KEY,
        promotion_name VARCHAR(100),
        discount_percentage NUMERIC(5,2),
        start_date DATE,
        end_date DATE,
        is_loyalty_exclusive BOOLEAN
    );
    

    CREATE TABLE roles (
        role_id SERIAL PRIMARY KEY,
        role_name VARCHAR(50)
    );
    

    CREATE TABLE taxitransfer (
        transferid SERIAL PRIMARY KEY,
        type VARCHAR(100),
        price NUMERIC(10,2)
    );
    

    CREATE TABLE travelagent (
        agentid SERIAL PRIMARY KEY,
        name VARCHAR(100),
        email VARCHAR(100)
    );
    