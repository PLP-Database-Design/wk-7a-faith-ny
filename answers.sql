-- Question 1: Achieving 1NF

CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product)
VALUES
(101, 'Faith Nyambura', 'Laptop'),
(101, 'Joy Amani', 'Mouse'),
(102, 'Alexa Katie', 'Tablet'),
(102, 'Erica ha', 'Keyboard'),
(102, 'Emily ha', 'Mouse'),
(103, 'Evelyn ha', 'Phone');


-- Question 2: Achieving 2NF

-- Separate CustomerName into its own table
CREATE TABLE Customers (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

INSERT INTO Customers (OrderID, CustomerName)
VALUES
(101, 'Katie fang'),
(102, 'Erica fang'),
(103, 'Suni lee');

-- Store product and quantity in separate table
CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product)
);

INSERT INTO OrderItems (OrderID, Product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
