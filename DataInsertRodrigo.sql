
---------------------------------------------------------------------
-- Add Data to DELIVERY_VEHICLES Table
---------------------------------------------------------------------

INSERT INTO DELIVERY_VEHICLES (VEHICLE_ID, DELIVERY_ID, MAKE, MODEL, LICENSE_PLATE)
VALUES ('VEH00005', 'D000000001', 'FORD', 'TRANSIT', 'JEL507');

INSERT INTO DELIVERY_VEHICLES (VEHICLE_ID, DELIVERY_ID, MAKE, MODEL, LICENSE_PLATE)
VALUES ('VEH00004', 'D000000002', 'FORD', 'TRANSIT', 'RMG606');

INSERT INTO DELIVERY_VEHICLES (VEHICLE_ID, DELIVERY_ID, MAKE, MODEL, LICENSE_PLATE)
VALUES ('VEH00003', 'D000000003', 'FORD', 'TRANSIT', 'JEL506');

INSERT INTO DELIVERY_VEHICLES (VEHICLE_ID, DELIVERY_ID, MAKE, MODEL, LICENSE_PLATE)
VALUES ('VEH00002', 'D000000004', 'FORD', 'TRANSIT', 'RMG605');

INSERT INTO DELIVERY_VEHICLES (VEHICLE_ID, DELIVERY_ID, MAKE, MODEL, LICENSE_PLATE)
VALUES ('VEH00001', 'D000000005', 'FORD', 'TRANSIT', 'JEL505');


-------------------------------------------------------------------------
-- Add Data to DELIVER_DRIVERS Table
-------------------------------------------------------------------------

INSERT INTO DELIVERY_DRIVERS (DRIVER_ID, DELIVERY_ID, FIRST_NAME, LAST_NAME, DRIVERS_LICENSE)
VALUES ('DR-03', 'D000000003', 'Sarah',	'Tapia', 'T111888666777');

INSERT INTO DELIVERY_DRIVERS (DRIVER_ID, DELIVERY_ID, FIRST_NAME, LAST_NAME, DRIVERS_LICENSE)
VALUES ('DR-04', 'D000000004', 'Jean',	'Smart', 'S555444777333');

INSERT INTO DELIVERY_DRIVERS (DRIVER_ID, DELIVERY_ID, FIRST_NAME, LAST_NAME, DRIVERS_LICENSE)
VALUES ('DR-05', 'D000000005', 'Nancy',	'Regan', 'R888666444111');

---------------------------------------------------------------------------
-- Add Data to MENU_ITEMS Table
---------------------------------------------------------------------------

INSERT INTO MENU_ITEMS (MENU_ID, ORDER_ID, ITEM, DESCRIPTION, PRICE)
VALUES ('MEN00001', 'OID00001',	'Cookies', 'Peanut Butter',	'15');

INSERT INTO MENU_ITEMS (MENU_ID, ORDER_ID, ITEM, DESCRIPTION, PRICE)
VALUES ('MEN00002', 'OID00002',	'Scone', 'Strawberry', '15.99');

INSERT INTO MENU_ITEMS (MENU_ID, ORDER_ID, ITEM, DESCRIPTION, PRICE)
VALUES ('MEN00003', 'OID00003', 'Doughnut', 'Glazed', '16.99');

INSERT INTO MENU_ITEMS (MENU_ID, ORDER_ID, ITEM, DESCRIPTION, PRICE)
VALUES ('MEN00004', 'OID00004', 'Cake', 'Lemon', '17.99');

INSERT INTO MENU_ITEMS (MENU_ID, ORDER_ID, ITEM, DESCRIPTION, PRICE)
VALUES ('MEN00005',	'OID00005',	'Pie', 'Chocolate Cream', '18.99');
--------------------------------------------------------------------------
--Add Data to PAYMENTS Table
--------------------------------------------------------------------------

INSERT INTO PAYMENTS (PAYMENT_ID, PAYMENT_TYPE, AMOUNT)
VALUES ('PAY00001',	'Cash', '39.99');

INSERT INTO PAYMENTS (PAYMENT_ID, PAYMENT_TYPE, AMOUNT)
VALUES ('PAY00002',	'Visa',	'49.99');

INSERT INTO PAYMENTS (PAYMENT_ID, PAYMENT_TYPE, AMOUNT)
VALUES ('PAY00003', 'Master', '59.99');

INSERT INTO PAYMENTS (PAYMENT_ID, PAYMENT_TYPE, AMOUNT)
VALUES ('PAY00004',	'Discover',	'69.99');

INSERT INTO PAYMENTS (PAYMENT_ID, PAYMENT_TYPE, AMOUNT)
VALUES ('PAY00005',	'American Express',	'79.99');
---------------------------------------------------------------------------
--Add Data to ORDER_DETAILS Table
---------------------------------------------------------------------------

INSERT INTO ORDER_DETAILS (ORDER_ID, ORDER_NUMBER)
VALUES ('OID00001', 'ORD00001');

INSERT INTO ORDER_DETAILS (ORDER_ID, ORDER_NUMBER)
VALUES ('OID00002', 'ORD00002');

INSERT INTO ORDER_DETAILS (ORDER_ID, ORDER_NUMBER)
VALUES ('OID00003',	'ORD00003');

INSERT INTO ORDER_DETAILS (ORDER_ID, ORDER_NUMBER)
VALUES ('OID00004', 'ORD00004');

INSERT INTO ORDER_DETAILS (ORDER_ID, ORDER_NUMBER)
VALUES ('OID00005', 'ORD00005');

----------------------------------------------------------------------------
--Add Data to CUSTOMER_ORDER Table
----------------------------------------------------------------------------

INSERT INTO CUSTOMER_ORDER (ORDER_NUMBER, CUST_ID, DELIVERY_ID, PAYMENT_ID)
VALUES ('ORD00001', 'CUST0001', 'D000000001', 'PAY00001');

INSERT INTO CUSTOMER_ORDER (ORDER_NUMBER, CUST_ID, DELIVERY_ID, PAYMENT_ID)
VALUES ('ORD00002', 'CUST0002', 'D000000002', 'PAY00002');

INSERT INTO CUSTOMER_ORDER (ORDER_NUMBER, CUST_ID, DELIVERY_ID, PAYMENT_ID)
VALUES ('ORD00003', 'CUST0003', 'D000000003', 'PAY00003');

INSERT INTO CUSTOMER_ORDER (ORDER_NUMBER, CUST_ID, DELIVERY_ID, PAYMENT_ID)
VALUES ('ORD00004', 'CUST0004', 'D000000004', 'PAY00004');

INSERT INTO CUSTOMER_ORDER (ORDER_NUMBER, CUST_ID, DELIVERY_ID, PAYMENT_ID)
VALUES ('ORD00005', 'CUST0005', 'D000000005', 'PAY00005');

-----------------------------------------------------------------------------
--Add Data to REWARDS_PROGRAM TABLE
-----------------------------------------------------------------------------

INSERT INTO REWARDS_PROGRAM (REWARDS_ID, CUST_ID, INCENTIVE)
VALUES ('RWD00001', 'CUST0001', '10%');

INSERT INTO REWARDS_PROGRAM (REWARDS_ID, CUST_ID, INCENTIVE)
VALUES ('RWD00002', 'CUST0002', '5%');

INSERT INTO REWARDS_PROGRAM (REWARDS_ID, CUST_ID, INCENTIVE)
VALUES ('RWD00003', 'CUST0003', '10%');

INSERT INTO REWARDS_PROGRAM (REWARDS_ID, CUST_ID, INCENTIVE)
VALUES ('RWD00004',	'CUST0004',	'5%');

INSERT INTO REWARDS_PROGRAM (REWARDS_ID, CUST_ID, INCENTIVE)
VALUES ('RWD00005',	'CUST0005',	'10%');


