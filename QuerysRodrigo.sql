
-- Greg
-- Select statement with one table with where condition.
-- List all VEHICLES. (make = 'FORD')
SELECT VEHICLE_ID, MAKE, MODEL, LICENSE_PLATE
FROM DELIVERY_VEHICLES
WHERE MAKE = 'FORD';

-- TRICIA
-- Select statement with 'row function'
-- List Customer's Incentive amount by First and Last
SELECT CUSTOMERS.FIRST_NAME, CUSTOMERS.LAST_NAME, REWARDS_PROGRAM.INCENTIVE
FROM CUSTOMERS
	INNER JOIN REWARDS_PROGRAM
ON CUSTOMERS.CUST_ID=REWARDS_PROGRAM.CUST_ID
ORDER BY CUSTOMERS.LAST_NAME;


-- BEN
-- Select statement with join and where condition.
-- Lists deliver driver name, order indintification details, price,
-- and destination of orders for ZipCode 55102 (Saint Paul)
SELECT Delivery_Drivers.First_Name, Delivery_Drivers.Last_Name,
Delivery.Delivery_ID, Customer_Order.Order_Number, Order_Details.Order_ID, Menu_Items.Price,
Customers.First_Name, Customers.Last_Name, Customers.ADDR_1, Customers.ADDR_2, Customers.City,
Customers.State_Province, Customers.Postal_Code
FROM Menu_Items INNER JOIN Order_Details ON (Menu_Items.Order_ID = Order_Details.Order_ID)
       INNER JOIN Customer_Order ON (Order_Details.Order_Number = Customer_Order.Order_Number)
       INNER JOIN Delivery ON (Customer_Order.Delivery_ID = Delivery.Delivery_ID)
       INNER JOIN Delivery_Drivers ON (Delivery.Delivery_ID = Delivery_Drivers.Delivery_ID)
       INNER JOIN Customers ON (Customer_Order.Cust_ID = Customers.Cust_ID)
WHERE Customers.Postal_Code = '55102';
-- BEN
-- Select statement with grouping (Group by and having clause)
--List ZipCodes that have more than one customer
SELECT Postal_Code, count(Cust_ID)
FROM Customers
GROUP BY Postal_Code
HAVING count(Cust_ID) > 1;
	
