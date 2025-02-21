SHOW VARIABLES LIKE 'secure_file_priv';

-- Drop the database if it exists
DROP DATABASE IF EXISTS globalstore;

-- Create the new database\
CREATE DATABASE globalstore;
USE globalstore;

-- Create Orders table
CREATE TABLE Orders (
    Row_ID INT AUTO_INCREMENT PRIMARY KEY,
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Postal_Code VARCHAR(20) NULL,
    City VARCHAR(100),
    State VARCHAR(100),
    Country VARCHAR(100),
    Region VARCHAR(50),
    Market VARCHAR(50),
    Product_ID VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(255),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(5,2),
    Profit DECIMAL(10,2),
    Shipping_Cost DECIMAL(10,2),
    Order_Priority VARCHAR(50),
    INDEX idx_order_id (Order_ID)
);

-- Create People table
CREATE TABLE People (
    Person VARCHAR(100) PRIMARY KEY,
    Region VARCHAR(50)
);

-- Create Returns table
CREATE TABLE Returns (
    Order_ID VARCHAR(50),
    Returned VARCHAR(10),
    Region VARCHAR(50),
    PRIMARY KEY (Order_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID) ON DELETE CASCADE
);
 

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\orders.csv'
INTO TABLE Orders
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Order_ID, Order_Date, Ship_Date, Ship_Mode, Customer_ID, Customer_Name, Segment, 
 Postal_Code, City, State, Country, Region, Market, Product_ID, Category, 
 Sub_Category, Product_Name, Sales, Quantity, Discount, Profit, Shipping_Cost, Order_Priority);




