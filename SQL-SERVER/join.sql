CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    DateJoined DATE
);

INSERT INTO Customers VALUES 
(1, 'Sudhanshu', 'sudhanshu@email.com', '1234567890', 'Street 10', 'Noida', 'UP', '201301', '2023-01-05'),
(2, 'Anjali', 'anjali@email.com', '0987654321', 'Street 20', 'Delhi', 'Delhi', '110001', '2023-02-10'),
(3, 'Rohan', 'rohan@email.com', '9876543210', 'Street 30', 'Mumbai', 'MH', '400001', '2023-03-20'),
(4, 'Meera', 'meera@email.com', '6789054321', 'Street 40', 'Kolkata', 'WB', '700001', '2023-04-15'),
(5, 'Aditya', 'aditya@email.com', '7890654321', 'Street 50', 'Pune', 'MH', '411001', '2023-05-18'),
(6, 'Neha', 'neha@email.com', '8907654321', 'Street 60', 'Chennai', 'TN', '600001', '2023-06-12'),
(7, 'Vikas', 'vikas@email.com', '6789123456', 'Street 70', 'Bangalore', 'KA', '560001', '2023-07-08'),
(8, 'Priya', 'priya@email.com', '7890123456', 'Street 80', 'Ahmedabad', 'GJ', '380001', '2023-08-22'),
(9, 'Harshit', 'harshit@email.com', '8901234567', 'Street 90', 'Hyderabad', 'TS', '500001')

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    PaymentMethod VARCHAR(50),
    ShippingMethod VARCHAR(50),
    Status VARCHAR(20),
    Discount DECIMAL(5,2),
    TrackingNumber VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders VALUES 
(101, 1, '2025-04-15', 2500.50, 'Credit Card', 'Standard', 'Delivered', 5.00, 'TRK12345'),
(102, 2, '2025-04-14', 1800.00, 'Debit Card', 'Express', 'Shipped', 3.00, 'TRK67890'),
(103, 3, '2025-04-13', 3200.75, 'PayPal', 'Standard', 'Processing', 10.00, 'TRK45678'),
(104, 4, '2025-04-12', 5000.00, 'UPI', 'Overnight', 'Delivered', 7.50, 'TRK78901'),
(105, 5, '2025-04-11', 2200.00, 'Net Banking', 'Standard', 'Shipped', 4.00, 'TRK23456'),
(106, 6, '2025-04-10', 4700.50, 'Cash on Delivery', 'Express', 'Processing', 2.50, 'TRK34567'),
(107, 7, '2025-04-09', 1500.00, 'Credit Card', 'Standard', 'Delivered', 6.00, 'TRK98765'),
(108, 8, '2025-04-08', 6000.25, 'Debit Card', 'Overnight', 'Shipped', 5.50, 'TRK54321'),
(109, 9, '2025-04-07', 1100.00, 'PayPal', 'Standard', 'Processing', 3.00, 'TRK67812'),
(110, 10, '2025-04-06', 8500.00, 'UPI', 'Express', 'Delivered', 8.00, 'TRK23489');

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10,2),
    Category VARCHAR(50),
    Brand VARCHAR(50),
    Stock INT,
    Weight DECIMAL(5,2),
    Warranty VARCHAR(50)
);

INSERT INTO Products VALUES 
(201, 'Laptop', 50000.00, 'Electronics', 'Dell', 50, 2.5, '1 Year'),
(202, 'Mouse', 1500.00, 'Accessories', 'Logitech', 150, 0.2, '6 Months'),
(203, 'Keyboard', 2500.00, 'Accessories', 'HP', 120, 0.5, '1 Year'),
(204, 'Monitor', 12000.00, 'Electronics', 'Samsung', 30, 5.0, '2 Years'),
(205, 'Printer', 8500.00, 'Office Supplies', 'Epson', 40, 7.5, '1 Year'),
(206, 'Headphones', 3000.00, 'Audio', 'Sony', 100, 0.3, '1 Year'),
(207, 'Webcam', 4000.00, 'Accessories', 'Logitech', 70, 0.4, '6 Months'),
(208, 'External Hard Drive', 7000.00, 'Storage', 'Seagate', 60, 0.8, '2 Years'),
(209, 'Smartphone', 35000.00, 'Electronics', 'Apple', 20, 0.5, '1 Year'),
(210, 'Smartwatch', 15000.00, 'Wearables', 'Samsung', 35, 0.2, '1 Year');

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    Subtotal DECIMAL(10,2),
    DiscountApplied DECIMAL(5,2),
    Tax DECIMAL(5,2),
    FinalPrice DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO OrderDetails VALUES 
(1, 101, 201, 1, 50000.00, 50000.00, 5.00, 5000.00, 47500.00),
(2, 101, 202, 2, 1500.00, 3000.00, 2.00, 300.00, 2700.00),
(3, 102, 203, 1, 2500.00, 2500.00, 3.00, 250.00, 2275.00),
(4, 103, 201, 1, 50000.00, 50000.00, 10.00, 5000.00, 45000.00),
(5, 103, 202, 1, 1500.00, 1500.00, 1.50, 150.00, 1348.50),
(6, 104, 204, 1, 12000.00, 12000.00, 7.50, 1200.00, 10750.00),
(7, 105, 205, 1, 8500.00, 8500.00, 4.00, 850.00, 7650.00),
(8, 106, 206, 1, 3000.00, 3000.00, 2.50, 300.00, 2700.00),
(9, 107, 207, 1, 4000.00, 4000.00, 6.00, 400.00, 3600.00),
(10, 108, 208, 1, 7000.00, 7000.00, 5.50, 700.00, 6445.00),
(11, 109, 209, 1, 35000.00, 35000.00, 3.00, 3500.00, 31650.00),
(12, 110, 210, 1, 15000.00,1500000.00 ,8.00 ,1200 ,13850),
(13, 110, 201, 1, 50000.00, 50000.00, 5.00, 5000.00, 47500.00),
(14, 110, 202, 1, 1500.00, 1500.00, 2.00, 300.00, 1300.00),
(15, 110, 203, 1, 2500.00, 2500.00, 3.00, 250.00, 2275.00),
(16, 110, 204, 1, 12000.00, 12000.00, 7.50, 1200.00, 10750.00),
(17, 110, 205, 1, 8500.00, 8500.00, 4.00, 850.00, 7650.00),
(18, 110, 206, 1, 3000.00, 3000.00, 2.50, 300.00, 2700.00);