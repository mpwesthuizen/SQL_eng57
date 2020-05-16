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

-- Q1.6 INCOMPLETE
SELECT sum the units with the discount 

-- Q1.7 
SELECT COUNT(*) AS "Total UK and USA Freight with over 100 orders"
FROM Orders
WHERE Freight > 100 AND ShipCountry IN ('UK', 'USA')


-- Q1.8 
SELECT TOP 1 OrderID, (UnitPrice * Quantity) * (1*Discount) AS "Discounted Totals"
FROM [Order Details] 
ORDER BY "Discounted Totals" DESC

---------------------------------------------------------------------------
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
-- Q3.1 INCOMPLETE
SELECT TitleOfCourtesy+' '+FirstName+' '+LastName AS "Employee Name", ReportsTo
FROM Employees

SELECT * FROM Employees
-- Q3.2 INCOMPLETE
-- USing SQL with EXCEL. First Create a new folder. Then export the data via 'task' and export, select Excel. Complete the exprot wizard. When fininshed the data should be in an excel file within the file specified.

-- Q3.3 INCOMPLETE
-- Q3.4 INCOMPLETE