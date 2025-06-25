ADMIN ROLE 

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public to admin_role;
ALTER TABLE customer OWNER TO admin_role;
ALTER TABLE customerLoyalty OWNER TO admin_role;
ALTER TABLE destinations OWNER TO admin_role;
ALTER TABLE flight OWNER TO admin_role;
ALTER TABLE bookingaccommodation OWNER TO admin_role;
ALTER TABLE bookingtransfer OWNER TO admin_role;
ALTER TABLE packageservice OWNER TO admin_role;
ALTER TABLE booking OWNER TO admin_role;
ALTER TABLE payment OWNER TO admin_role;
ALTER TABLE feedback OWNER TO admin_role;
ALTER TABLE promotions OWNER TO admin_role;
ALTER TABLE holidaypackage OWNER TO admin_role;
ALTER TABLE agencies OWNER TO admin_role;
ALTER TABLE bookingflight OWNER TO admin_role;
ALTER TABLE packageservice OWNER TO admin_role;


AGENCY ROLE

GRANT SELECT ON customer TO agency_role;
GRANT SELECT ON destinations TO agency_role;
GRANT SELECT ON flight TO agency_role;
GRANT SELECT ON accommodation TO agency_role;
GRANT SELECT ON taxitransfer TO agency_role;
GRANT SELECT ON booking TO agency_role;
GRANT SELECT ON payment TO agency_role;
GRANT SELECT ON feedback TO agency_role;
GRANT SELECT ON promotions TO agency_role;
GRANT SELECT ON agencies TO agency_role;
GRANT SELECT ON holidaypackage TO agency_role;


GRANT USAGE, SELECT ON SEQUENCE customer_customerid_seq TO agency_role;
GRANT USAGE, SELECT ON SEQUENCE destinations_destination_id_seq TO agency_role;
GRANT USAGE, SELECT ON SEQUENCE flight_flightid_seq TO agency_role;
GRANT USAGE, SELECT ON SEQUENCE accommodation_accommodationid_seq TO agency_role;
GRANT USAGE, SELECT ON SEQUENCE taxitransfer_transferid_seq TO agency_role;
GRANT USAGE, SELECT ON SEQUENCE booking_bookingid_seq TO agency_role;
GRANT USAGE, SELECT ON SEQUENCE payment_paymentid_seq TO agency_role;
GRANT USAGE, SELECT ON SEQUENCE feedback_feedbackid_seq TO agency_role;
GRANT USAGE, SELECT ON SEQUENCE promotions_promotion_id_seq TO agency_role;
GRANT USAGE, SELECT ON SEQUENCE agencies_agency_id_seq TO agency_role;
GRANT USAGE, SELECT ON SEQUENCE holidaypackage_packageid_seq TO agency_role;
GRANT USAGE, SELECT ON SEQUENCE roles_role_id_seq TO agency_role;



GRANT INSERT ON customer TO agency_role;
GRANT INSERT ON destinations TO agency_role;
GRANT INSERT ON flight TO agency_role;
GRANT INSERT ON accommodation TO agency_role;
GRANT INSERT ON taxitransfer TO agency_role;
GRANT INSERT ON booking TO agency_role;
GRANT INSERT ON payment TO agency_role;
GRANT INSERT ON feedback TO agency_role;
GRANT INSERT ON promotions TO agency_role;
GRANT INSERT ON agencies TO agency_role;
GRANT INSERT ON holidaypackage TO agency_role;


GRANT UPDATE ON customer TO agency_role;
GRANT UPDATE ON destinations TO agency_role;
GRANT UPDATE ON flight TO agency_role;
GRANT UPDATE ON accommodation TO agency_role;
GRANT UPDATE ON taxitransfer TO agency_role;
GRANT UPDATE ON booking TO agency_role;
GRANT UPDATE ON payment TO agency_role;
GRANT UPDATE ON feedback TO agency_role;
GRANT UPDATE ON promotions TO agency_role;
GRANT UPDATE ON agencies TO agency_role;
GRANT UPDATE ON holidaypackage TO agency_role;




CUSTOMER ROLE

ALTER ROLE customer_role WITH LOGIN;

GRANT SELECT ON customer TO customer_role;
GRANT SELECT ON destinations TO customer_role;
GRANT SELECT ON flight TO customer_role;
GRANT SELECT ON feedback TO customer_role;
GRANT SELECT ON bookingaccommodation TO customer_role;
GRANT SELECT ON bookingtransfer TO customer_role;
GRANT SELECT ON promotions TO customer_role;
GRANT SELECT ON holidayPackage TO customer_role;
GRANT SELECT ON booking TO customer_role;
GRANT SELECT ON payment TO customer_role;
GRANT SELECT ON agencies TO customer_role;
GRANT SELECT ON packageservice TO customer_role;

