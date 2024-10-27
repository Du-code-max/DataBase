CREATE DATABASE ASM1
Go

USE ASM1;
GO
 
 CREATE TABLE Customers (
    CustomersID INT PRIMARY KEY,
    CustomersName VARCHAR(100),
    CustomersPhone VARCHAR(20),
    CustomersEmail VARCHAR(100),
    CustomersAddress VARCHAR(255)
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    EmployeePhone VARCHAR(20),
    EmployeeEmail VARCHAR(100),
    EmployeeAddress VARCHAR(255),
    EmployeePosition VARCHAR(50)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    ProductImportPrice DECIMAL(10, 2),
    ProductSellingPrice DECIMAL(10, 2),
    ProductSize VARCHAR(50),
    ProductQuantity INT,
    ProductStock INT
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomersID INT,
    EmployeeID INT,
    OrderDate DATE,
    OrderTotal DECIMAL(10, 2),
    FOREIGN KEY (CustomersID) REFERENCES Customers(CustomersID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);