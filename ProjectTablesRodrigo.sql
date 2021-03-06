-- Greg Nordin
-- Workspace: DBMS1570 
-- Scripts to create table structure for project database.
-- 


-----------------------------------------------------------------------
-- CREATE TABLES WITH BASIC STRUCTURE ONLY. NO PRIMARY KEY
-----------------------------------------------------------------------


CREATE TABLE Customers
    ( 
     CUST_ID CHAR (10)  NOT NULL , 
     FIRST_NAME VARCHAR2 (64) ,
	 LAST_NAME VARCHAR2 (64) ,
	 ADDR_1 VARCHAR2 (64) ,
	 ADDR_2 VARCHAR2 (64) ,
	 CITY VARCHAR2 (64) ,
	 STATE_PROVINCE CHAR (2) ,
	 POSTAL_CODE NUMBER (5) ,
	 PHONE_NUMBER CHAR (15) ,
	 EMAIL VARCHAR2 (64) 
    );
	
CREATE TABLE REWARDS_PROGRAM 
    ( 
    REWARDS_ID Char(10) NOT NULL,
	CUST_ID	Char(10) NOT NULL,
	INCENTIVE VarChar2(64)
    );

CREATE TABLE CUSTOMER_ORDER 
    ( 
    ORDER_NUMBER Char(10) NOT NULL,
	CUST_ID	Char(10) NOT NULL,
	DELIVERY_ID Char(10) NOT NULL,
	PAYMENT_ID Char(10) NOT NULL
    );

CREATE TABLE ORDER_DETAILS 
    ( 
	ORDER_ID Char(10) NOT NULL,
	ORDER_NUMBER Char(10) NOT NULL
    );

CREATE TABLE MENU_ITEMS 
    ( 
	MENU_ID Char(10) NOT NULL,
	ORDER_ID	Char(10) NOT NULL,
	ITEM VarChar(512),
	DESCRIPTION	VarChar(512),
	PRICE Number(10,2)
    );
    

CREATE TABLE PAYMENTS 
    ( 
	PAYMENT_ID Char(10) NOT NULL,
	PAYMENT_Type VarChar2(32),
	AMOUNT Number(10,2)
    );


CREATE TABLE DELIVERY 
    ( 
    DELIVERY_ID Char(10) NOT NULL
	
    );

CREATE TABLE DELIVERY_DRIVERS 
    ( 
    DRIVER_ID  PK	Char(10) NOT NULL,
	DELIVERY_ID Char(10) NOT NULL,
	FIRST_NAME	VarChar(64),
	LAST_NAME	VarChar(64),
	DRIVERS_LICENSE VarChar(64)
    );

CREATE TABLE DELIVERY_VEHICLES
    ( 
    VEHICLE_ID Char(10) NOT NULL,
	DELIVERY_ID Char(10) NOT NULL,
	MAKE VarChar(64),
	MODEL VarChar(64),
	LICENSE_PLATE	Char(10)
    );



-----------------------------------------------------------------------
-- Add primary key after the table are created
-- Each table has ONE primary key
-----------------------------------------------------------------------

ALTER TABLE CUSTOMERS 
    ADD CONSTRAINT CUST_ID_PK PRIMARY KEY ( CUST_ID ) ;

ALTER TABLE REWARDS_PROGRAM 
    ADD CONSTRAINT REWARDS_ID_PK PRIMARY KEY ( REWARDS_ID ) ;

ALTER TABLE CUSTOMER_ORDER
    ADD CONSTRAINT ORDER_NUMBER_PK PRIMARY KEY ( ORDER_NUMBER ) ;
        
ALTER TABLE ORDER_DETAILS 
    ADD CONSTRAINT ORDER_ID_PK PRIMARY KEY ( ORDER_ID ) ;
    
ALTER TABLE MENU_ITEMS 
    ADD CONSTRAINT MENU_ID_PK PRIMARY KEY ( MENU_ID ) ;

ALTER TABLE PAYMENTS
    ADD CONSTRAINT PAYMENT_ID_PK PRIMARY KEY ( PAYMENT_ID ) ;
    
ALTER TABLE DELIVERY 
    ADD CONSTRAINT DELIVERY_ID_PK PRIMARY KEY ( DELIVERY_ID ) ;
	
ALTER TABLE DELIVERY_DRIVERS
    ADD CONSTRAINT DRIVER_ID_PK PRIMARY KEY ( DRIVER_ID ) ;

ALTER TABLE DELIVERY_VEHICLES
    ADD CONSTRAINT VEHICLE_ID_PK PRIMARY KEY ( VEHICLE_ID ) ;


-----------------------------------------------------------------------
-- Add foreign key after the table are created
-- Number of foreign key depends on 'relationships'
-----------------------------------------------------------------------

ALTER TABLE REWARDS_PROGRAM 
    ADD CONSTRAINT RP_CUST_ID_FK FOREIGN KEY ( CUST_ID ) 
    REFERENCES CUSTOMERS ( CUST_ID ) ;

-- Add 3 foreign keys to CUSTOMER_ORDER table
ALTER TABLE CUSTOMER_ORDER
    ADD CONSTRAINT CO_CUST_ID_FK FOREIGN KEY  ( CUST_ID ) 
    REFERENCES CUSTOMERS ( CUST_ID ) ; 

ALTER TABLE CUSTOMER_ORDER
    ADD CONSTRAINT CO_DELIVERY_ID_FK FOREIGN KEY  ( DELIVERY_ID ) 
    REFERENCES DELIVERY ( DELIVERY_ID ) ;
	
ALTER TABLE CUSTOMER_ORDER
    ADD CONSTRAINT CO_PAYMENT_ID_FK FOREIGN KEY  ( PAYMENT_ID ) 
    REFERENCES PAYMENTS ( PAYMENT_ID ) ;

--	
ALTER TABLE ORDER_DETAILS
    ADD CONSTRAINT OD_ORDER_NUMBER_FK FOREIGN KEY ( ORDER_NUMBER ) 
    REFERENCES CUSTOMER_ORDER  ( ORDER_NUMBER ) ;
    
ALTER TABLE MENU_ITEMS
    ADD CONSTRAINT MI_ORDER_ID_FK FOREIGN KEY ( ORDER_ID ) 
    REFERENCES ORDER_DETAILS ( ORDER_ID ) ;
  
ALTER TABLE DELIVERY_DRIVERS 
    ADD CONSTRAINT DD_DELIVERY_ID_FK FOREIGN KEY  ( DELIVERY_ID ) 
    REFERENCES DELIVERY ( DELIVERY_ID ) ;

ALTER TABLE DELIVERY_VEHICLES 
    ADD CONSTRAINT DV_DELIVERY_ID_FK FOREIGN KEY  ( DELIVERY_ID ) 
    REFERENCES DELIVERY ( DELIVERY_ID ) ;

