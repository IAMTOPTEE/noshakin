create database SQI_STORE;
USE SQI_STORE;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15),
    street VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Customers (name, phone_number, street, city) VALUES
('BOB JOSHUA', '4267967890', '342 st ave', 'FLORIDA'),
('Elena Scott', '2456272921', '245 minna', 'new orleans'),
('john doen', '3876790152', '2456  chit', 'ohio'),
('gabriel alves', '4452853153', '324 Map dr', 'minessota'),
('bobby fisht', '5656238756', '436 apps St', 'dakota'),
('alex schap', '6234278975', '355 mild St', 'Philadelphia'),
('father rose', '7890123456', '345 zen St', 'north carolina'),
('Hannah Montana', '8901234567', '343 rod St', 'washington'),
('maggie bren', '9552772678', '456 oakland St', 'south carolina'),
('shawn cap', '2456789629', '123 meatloaf St', 'San franscisco');

INSERT INTO Products (product_name, category, price, stock_quantity) VALUES
('Running Shoes', 'Sportswear', 95.00, 30),
('Bluetooth Speaker', 'Audio', 45.00, 20),
('Sketchbook', 'Art Supplies', 12.00, 80),
('Office Lamp', 'Home Decor', 60.00, 12),
('Ceramic Plate Set', 'Dining', 35.00, 40);

INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2025-07-01', 925.00),
(2, '2025-07-02', 1450.00),
(3, '2025-07-03', 215.00),
(4, '2025-07-04', 50.00),
(5, '2025-07-05', 85.00),
(6, '2025-07-06', 190.00),
(7, '2025-07-07', 705.00),
(8, '2025-07-08', 1330.00),
(9, '2025-07-09', 165.00),
(10, '2025-07-10', 45.00);








