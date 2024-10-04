-- Create Products Table
CREATE TABLE Products (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Price DECIMAL(10, 2),
    Quantity_Available INT
);

-- Create Suppliers Table
CREATE TABLE Suppliers (
    Supplier_ID INT PRIMARY KEY,
    Supplier_Name VARCHAR(100),
    Contact_Info VARCHAR(100)
);

-- Create Orders Table
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Product_ID INT,
    Supplier_ID INT,
    Order_Date DATE,
    Quantity_Ordered INT,
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);
