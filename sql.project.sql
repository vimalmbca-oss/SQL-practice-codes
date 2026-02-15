create database ice_creame;
use ice_creame;
create table customer(customer_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone_number VARCHAR(15),
  address varchar(500));
  
insert into customer values
(2,'Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '456 Ice Cream Ave, Lincoln, NE'),
(3,'Michael', 'Johnson', 'michael.johnson@example.com', '345-678-9012', '789 Creamy Rd, Denver, CO'),
(4,'Emily', 'Williams', 'emily.williams@example.com', '456-789-0123', '101 Frozen Ln, New York, NY'),
(5,'Chris', 'Brown', 'chris.brown@example.com', '567-890-1234', '202 Cold St, Miami, FL'),
(6,'Olivia', 'Jones', 'olivia.jones@example.com', '678-901-2345', '303 Chill Blvd, Los Angeles, CA'),
(7,'James', 'Garcia', 'james.garcia@example.com', '789-012-3456', '404 Icebox Dr, Phoenix, AZ'),
(8,'Sophia', 'Martinez', 'sophia.martinez@example.com', '890-123-4567', '505 Frost Way, Seattle, WA'),
(9,'Liam', 'Davis', 'liam.davis@example.com', '901-234-5678', '606 Glacier Rd, Austin, TX'),
(10,'Ava', 'Miller', 'ava.miller@example.com', '012-345-6789', '707 Snowy Ln, Portland, OR');

select*from customer;

create table ice_creame_flowler(flavor_id INT AUTO_INCREMENT PRIMARY KEY,
  flavor_name VARCHAR(100) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  stock_quantity INT NOT NULL);
  
  
insert into ice_creame_flowler values 
(1,'Vanilla', 3.50, 100),
(2,'Chocolate', 3.75, 80),
(3,'Strawberry', 4.00, 50),
(4,'Mint', 3.25, 75),
(5,'Cookies and Cream', 4.25, 60),
 (6,'Pistachio', 4.50, 40),
(7,'Mango', 3.80, 90),
(8,'Lemon', 3.00, 120),
(9,'Salted Caramel', 4.00, 70),
(10,'Coffee', 3.60, 85);

select*from ice_creame_flowler;

create table Orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_price DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);


insert into Orders (customer_id, order_date, total_price)
values
(1, '2025-03-01', 7.00),
(2, '2025-03-02', 10.50),
(3, '2025-03-03', 12.00),
(4, '2025-03-04', 6.75),
(5, '2025-03-05', 8.50),
(6, '2025-03-06', 9.25),
(7, '2025-03-07', 14.00),
(8, '2025-03-08', 11.50),
(9, '2025-03-09', 13.75),
(10, '2025-03-10', 10.00);

select * from Orders;

create table Payments (
  payment_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  payment_date DATE,
  payment_amount DECIMAL(10, 2),
  payment_method VARCHAR(50),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

select total_price+price as amount from orders, ice_creame_flowler;

insert into Payments (order_id, payment_date, payment_amount, payment_method)
values
(1, '2025-03-02', 7.00, 'Credit Card'),
(2, '2025-03-03', 10.50, 'Cash'),
(3, '2025-03-04', 12.00, 'Debit Card'),
(4, '2025-03-05', 6.75, 'Credit Card'),
(5, '2025-03-06', 8.50, 'Cash'),
(6, '2025-03-07', 9.25, 'Debit Card'),
(7, '2025-03-08', 14.00, 'Credit Card'),
(8, '2025-03-09', 11.50, 'Cash'),
(9, '2025-03-10', 13.75, 'Credit Card'),
(10, '2025-03-11', 10.00, 'Debit Card');


SELECT * FROM Payments;

CREATE DATABASE ice_cream_shop;
SELECT first_name, last_name, email FROM Customers;

SELECT * FROM Customers WHERE customer_id = 1;
SELECT * FROM Customers ORDER BY last_name ASC;
SELECT * FROM Customers LIMIT 5;
INSERT INTO IceCreamFlavors (flavor_name, price, stock_quantity)
VALUES ('New Flavor', 4.50, 50);

SELECT * FROM IceCreamFlavors;
INSERT INTO Orders (customer_id, order_date, total_price)
VALUES (1, '2025-03-12', 9.50);

SELECT total_price FROM Orders WHERE order_id = 3;

INSERT INTO Payments (order_id, payment_date, payment_amount, payment_method)
VALUES (1, '2025-03-12', 9.50, 'Credit Card');

SELECT * FROM Payments WHERE payment_method = 'Credit Card';

SELECT SUM(total_price) AS total_revenue FROM Orders;

SELECT Orders.order_id, Orders.order_date, Orders.total_price, Customer.first_name, Customer.last_name
FROM Orders
JOIN Customer ON Orders.customer_id = Customer.customer_id;

SELECT * FROM Orders WHERE total_price > 10;
INSERT INTO Payments (order_id, payment_date, payment_amount, payment_method)
VALUES (1, '2025-03-02', 7.00, 'Credit Card');

SELECT * FROM Payments WHERE payment_date = '2025-03-10';

SELECT SUM(payment_amount) FROM Payments;
SELECT * FROM IceCreamFlavors ORDER BY price DESC LIMIT 1;

UPDATE IceCreamFlavors SET stock_quantity = 110 WHERE flavor_name = 'Vanilla';
SELECT SUM(total_price) FROM Orders;
SELECT Customers.first_name, Customers.last_name, Orders.total_price
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id;

SELECT flavor_name, stock_quantity FROM IceCreamFlavors;
UPDATE Customers SET email = 'new.email@example.com' WHERE customer_id = 3;

SELECT order_id, order_date, total_price 
FROM Orders 
WHERE order_date > '2025-03-06';

SELECT COUNT(*) FROM Payments WHERE payment_method = 'Cash';
UPDATE IceCreamFlavors SET price = 3.50 WHERE flavor_name = 'Mint';









