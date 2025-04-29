--1. Write an SQL query to retrieve the checkNumber, paymentDate, and amount from payments table.
CREATE DATABASE payments;
-- first create the database
-- then use it
USE payments;
-- create the payments table with the specified columns
CREATE TABLE payments (
    checkNumber VARCHAR(50) NOT NULL,
    paymentDate DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL
);
-- insert sample data into the payments table
INSERT INTO payments (checkNumber, paymentDate, amount) VALUES
('CHK001', '2023-01-15', 1500.00),
('CHK002', '2023-02-20', 2500.00),
('CHK003', '2023-03-10', 3000.00);
-- select the required columns from the payments table
-- this will retrieve the checkNumber, paymentDate, and amount from the payments table
SELECT checkNumber, paymentDate, amount FROM payments;  


--2.  Write an SQL query to retrieve the orderDate, requiredDate, and status of orders that are currently 'in Process' from the order table. Sort the results in descending order of orderDate
CREATE DATABASE orders;
-- first create the database
-- then use it
USE orders; 
-- create the orders table with the specified columns
CREATE TABLE orders (
    orderDate DATE NOT NULL,
    requiredDate DATE NOT NULL,
    status (50) NOT NULL);
-- insert sample data into the orders table
INSERT INTO orders (orderDate, requiredDate, status) VALUES
('2023-01-01', '2023-01-10', 'in Process'),
('2023-02-01', '2023-02-10', 'Shipped'),
('2023-03-01', '2023-03-10', 'in Process');
-- select the required columns from the orders table        
-- this will retrieve the orderDate, requiredDate, and status of orders that are currently 'in Process' from the order table
SELECT orderDate, requiredDate, status FROM orders WHERE status = 'in Process' ORDER BY orderDate DESC;



--3.  Write a query to display the firstName, lastName, and email of employees whose job title is 'Sales Rep' and order them in descending order of EmployeeNumber
CREATE DATABASE employees;
-- first create the database
-- then use it  
USE employees;
-- create the employees table with the specified columns
CREATE TABLE employees (
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    jobTitle VARCHAR(50) NOT NULL,
    EmployeeNumber INT NOT NULL
);
-- insert sample data into the employees table  
INSERT INTO employees (firstName, lastName, email, jobTitle, EmployeeNumber) VALUES
("David", "Smith", "Szaba@gmail.com", "Sales Rep", 101),
("John", "Sam", "John@gmail.com", "Sales Rep", 102),
("Jane", "Doe", "jane@outlook.com","Sales Rep", 103),
("Alice", "Johnson", "Alice@Yahoo.com","Sales Rep", 104),

SELECT firstName, lastName, email FROM employees WHERE jobTitle = 'Sales Rep' ORDER BY EmployeeNumber DESC;
-- this will retrieve the firstName, lastName, and email of employees whose job title is 'Sales Rep' and order them in descending order of EmployeeNumber


--4. Write a query to retrieve all the columns and records from the offices table.
CREATE DATABASE offices;
-- first create the database    
-- then use it
USE offices;
-- create the offices table with the specified columns
CREATE TABLE offices (
    officeCode VARCHAR(10) NOT NULL,
    city VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    addressLine1 VARCHAR(100) NOT NULL,
    addressLine2 VARCHAR(100),
    state VARCHAR(50),
    country VARCHAR(50) NOT NULL,
    postalCode VARCHAR(20) NOT NULL,
    territory VARCHAR(50) NOT NULL
);
-- insert sample data into the offices table    
INSERT INTO offices (officeCode, city, phone, addressLine1, addressLine2, state, country, postalCode, territory) VALUES
('1', 'New York', '123-456-7890', '123 Main St', 'Apt 4B', 'NY', 'USA', '10001', 'North America'),
('2', 'Los Angeles', '987-654-3210', '456 Elm St', NULL, 'CA', 'USA', '90001', 'North America'),
('3', 'Toronto', '555-555-5555', '789 Maple Ave', NULL, NULL, 'Canada', 'M5H 2N2', 'North America');
-- select all columns and records from the offices table
SELECT * FROM offices;
-- this will retrieve all the columns and records from the offices table

--5. Write a query to fetch the productName and quantityInStock from the products table.Sort the resultsin ascending order of buyPrice and limit the output to 5 records.
CREATE DATABASE products;
-- first create the database        
-- then use it
USE products;
-- create the products table with the specified columns
CREATE TABLE products (
    productName VARCHAR(100) NOT NULL,
    quantityInStock INT NOT NULL,
    buyPrice DECIMAL(10, 2) NOT NULL
);
-- insert sample data into the products table   
INSERT INTO products (productName, quantityInStock, buyPrice) VALUES
('Product A', 100, 10.00),
('Product B', 50, 20.00),
('Product C', 200, 15.00),
('Product D', 75, 25.00),
('Product E', 30, 30.00),
('Product F', 60, 12.50);
-- select the required columns from the products table
SELECT productName, quantityInStock FROM products ORDER BY buyPrice ASC LIMIT 5;

-- this will retrieve the productName and quantityInStock from the products table, sort the results in ascending order of buyPrice, and limit the output to 5 records  

 