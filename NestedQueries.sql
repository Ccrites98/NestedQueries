USE northwind;

SELECT ProductName
FROM Products
WHERE UnitPrice = (
    SELECT MAX(UnitPrice)
    FROM Products
);
SELECT OrderID, ShipVia AS ShipperID, ShipAddress AS ShippingAddress
FROM Orders
WHERE ShipVia = (
    SELECT ShipperID
    FROM Shippers
    WHERE CompanyName = 'Federal Shipping'
);
SELECT OrderID
FROM `Order Details`
WHERE ProductID = (
    SELECT ProductID
    FROM Products
    WHERE ProductName = 'Sasquatch Ale'
);
SELECT Employees.FirstName, Employees.LastName
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.OrderID = 10266;

SELECT Customers.CustomerID, Customers.ContactName
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID = 10266;