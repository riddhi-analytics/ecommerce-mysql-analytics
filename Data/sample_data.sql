INSERT INTO Categories (CategoryName) VALUES
('Electronics'),
('Furniture'),
('Clothing');
INSERT INTO Customers (CustomerName, Email, City, Segment) VALUES
('Rohan Shah','rohan@gmail.com','Ahmedabad','Consumer'),
('Priya Patel','priya@gmail.com','Surat','Corporate'),
('Amit Kumar','amit@gmail.com','Mumbai','Consumer'),
('Neha Joshi','neha@gmail.com','Pune','Home Office'),
('Karan Mehta','karan@gmail.com','Delhi','Corporate');
INSERT INTO Products (ProductName, CategoryID, Price) VALUES
('Laptop',1,55000),
('Office Chair',2,7000),
('T-Shirt',3,800),
('Mobile Phone',1,30000),
('Study Table',2,12000);
INSERT INTO Orders (CustomerID, OrderDate, ShipDate, OrderStatus) VALUES
(1,'2024-01-10','2024-01-12','Shipped'),
(2,'2024-02-05','2024-02-08','Delivered'),
(3,'2024-02-15','2024-02-18','Pending'),
(4,'2024-03-01','2024-03-04','Delivered'),
(5,'2024-03-10','2024-03-13','Shipped');
INSERT INTO OrderDetails
(OrderID, ProductID, Quantity, Discount, Sales, Profit)
VALUES
(1,1,1,0.00,55000,8000),
(2,2,2,5.00,13500,2000),
(3,4,1,10.00,29000,5000),
(4,3,3,0.00,2400,600),
(5,5,1,15.00,10500,2500);