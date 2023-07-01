-- =============================================
-- Create table db template
-- =============================================
-- Membuat tabel customer
USE DWH_Project
GO

CREATE TABLE DimCustomer (
    CustomerID INT NOT NULL PRIMARY KEY,
    CustomerName VARCHAR(50)NOT NULL,
    Age INT NOT NULL,
	Gender VARCHAR(50) NOT NULL,
	City  VARCHAR(50)NOT NULL,
	NoHp VARCHAR(50)
);

-- Membuat tabel product
CREATE TABLE DimProduct (
    ProductId INT NOT NULL PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
	ProductCategory VARCHAR(255)NOT NULL,
    ProductUnitPrice INT
);

-- Membuat tabel status_order
CREATE TABLE FactStatusOrder (
    StatusID INT NOT NULL PRIMARY KEY,
    StatusOrder VARCHAR(50) NOT NULL,
	StatusOrderDesc VARCHAR(50) NOT NULL
);

-- Membuat tabel sales_order
CREATE TABLE Fact (
    OrderId INT NOT NULL PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES DimCustomer(CustomerID) NOT NULL,
    ProductID INT FOREIGN KEY REFERENCES DimProduct(ProductID) NOT NULL,
	Quantity INT NOT NULL,
    Amount INT NOT NULL,
	StatusID INT FOREIGN KEY REFERENCES FactStatusOrder(StatusID) NOT NULL,
    order_date DATE NOT NULL
);

