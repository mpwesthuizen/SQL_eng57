USE Northwind

--SQL Mini Project Including Marking Scheme v1

-- Q1.1
SELECT CustomerID, CompanyName, Address
FROM Customers 
WHERE City IN ('London', 'Paris')

-- Q1.2
SELECT ProductName, QuantityPerUnit 
FROM Products
WHERE QuantityPerUnit LIKE ('%bottles%')


-- Q1.3 
SELECT CompanyName, Country, ProductName, QuantityPerUnit 
FROM Products
LEFT JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE QuantityPerUnit LIKE ('%bottles%')

-- Q1.4 
SELECT CategoryName, COUNT(Products.CategoryID) AS "Category Amounts" 
FROM Products
LEFT JOIN Categories ON Products.CategoryID=Categories.CategoryID
GROUP BY  Categories.CategoryID, Categories.CategoryName ORDER BY [Category Amounts] DESC

-- Q1.5 
SELECT TitleOfCourtesy+' '+FirstName+' '+LastName AS "Employee Name", City
FROM Employees
WHERE Country LIKE('UK')

-- Q1.6 
SELECT Region.RegionID, FORMAT(SUM((UnitPrice *(1- Discount))* Quantity),'C') "Total Discount Price"   
FROM [Order Details]
INNER JOIN Orders ON Orders.OrderID = [Order Details].OrderID
INNER JOIN EmployeeTerritories ON Orders.EmployeeID = EmployeeTerritories.EmployeeID
INNER JOIN Territories ON EmployeeTerritories.TerritoryID = Territories.TerritoryID
INNER JOIN Region ON Territories.RegionID = Region.RegionID
GROUP BY  Region.RegionID HAVING SUM((UnitPrice *(1- Discount))* Quantity) > 1000000

-- Q1.7 
SELECT COUNT(*) AS "Total UK and USA Freight with over 100 orders"
FROM Orders
WHERE Freight > 100 AND ShipCountry IN ('UK', 'USA')


-- Q1.8 
SELECT TOP 1 OrderID, UnitPrice * (1*Discount) * Quantity  AS "Discounted Totals"
FROM [Order Details] 
ORDER BY "Discounted Totals" DESC

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Q2.1
CREATE TABLE Spartans
(
 Spartan_id INT IDENTITY(1,1),
 Seperate_title VARCHAR(5),
 First_name VARCHAR(20),
 Last_name VARCHAR(20),
 Uni VARCHAR(20),
 Uni_course VARCHAR(20),
 Uni_grade VARCHAR(5),
 PRIMARY KEY (Spartan_id)  
)

-- Q2.2
INSERT INTO Spartans
(
    Seperate_title, First_name, Last_name, Uni, Uni_course, Uni_grade
)
VALUES
(
    'Mr.', 'Marcus', 'Westhuizen', 'LIBF', 'Finance & Investment', '2.1'
),
(
    'Mr.', 'Stefan', 'Okolo', 'Aston', 'Geography', '2.1'
),
(
    'Mr.', 'Delvin', 'Roy', 'Leeds', 'History', '2.2'
),
(
    'Mr.', 'Nathan', 'Forrester', 'Aberstwyth', 'Music', '2.2'
),
(
    'Mr.', 'Avraj', 'Singh', 'UCL', 'Art', '1.1'
),
(
    'Ms.', 'Saskia', 'Van Barthold', 'Durham', 'Engineering', '1.1'
),
(
    'Mr.', 'Mergim', 'Berisha', 'Nottingham', 'English', '3.1'
),
(
    'Mr.', 'Ryan', 'Smith', 'Bournemouth', 'Computer Science', '3.1'
),
(
    'Mr.', 'Samir', 'Djaafer', 'Leicester', 'Computer Engineering', '2.1'
),
(
    'Mr.', 'Jonathon', 'Holder', 'Oxford', 'Physics', '2.1'
),
(
    'Mr.', 'Patrick', 'Clancy', 'Edinburgh', 'Mathematics', '1.1'
),
(
    'Mr.', 'Hussain', 'Ali', 'Nottingham Trent', 'Biology', '1.1'
),
(
    'Mr.', 'Fahad', 'Khisaf', 'Oxford Brookes', 'Chemistry', '2.2'
)

SELECT * FROM Spartans

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Q3.1 
SELECT TitleOfCourtesy+' '+FirstName+' '+LastName AS "Employee Name", ReportsTo
FROM Employees

-- Q3.2(EXCEL) 
-- USing SQL with EXCEL. First Create a new folder. Then export the data via 'task' and export, select Excel. Complete the exprot wizard. When fininshed the data should be in an excel file within the file specified.
SELECT CompanyName, FORMAT(SUM([Order Details].UnitPrice * Quantity),'C') AS "Supplier Total"
FROM [Order Details]
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID
INNER JOIN  Suppliers ON Products.SupplierID = Suppliers.SupplierID 
GROUP BY  CompanyName HAVING SUM([Order Details].UnitPrice * Quantity)> 10000 
ORDER BY SUM([Order Details].UnitPrice * Quantity) DESC  

-- Q3.3
SELECT TOP 10 CompanyName, ContactName, FORMAT(SUM(([Order Details].UnitPrice * (1-Discount)) * Quantity),'C') AS "Shippped Orders Total"
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN [Order Details] ON  Orders.OrderID = [Order Details].OrderID
WHERE ShippedDate BETWEEN '1998-01-01' AND '1998-05-06'
GROUP BY CompanyName, ContactName ORDER BY SUM(([Order Details].UnitPrice *(1-Discount))* Quantity) DESC
 
-- Q3.4(EXCEL)
SELECT AVG(DATEDIFF(dd, OrderDate, ShippedDate)) AS "Average Amount of Shipping Days ", FORMAT(ShippedDate, 'MMM-yy') AS "Shipping Month"
FROM Orders
WHERE ShippedDate IS NOT NULL
GROUP BY YEAR(ShippedDate), MONTH(ShippedDate), FORMAT(ShippedDate, 'MMM-yy') ORDER BY YEAR(ShippedDate), MONTH(ShippedDate)

 