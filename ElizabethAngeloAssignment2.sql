--1. Products Table. Select all columns
SELECT * FROM Products;

--2. Select product ID and product name. Order by product name
SELECT ProductID, ProductName
FROM Products
ORDER BY ProductName;

--3. Select product ID, product name, and the total inventory value for each product. Name new column [inventory value]. Order by inventory value descending.
SELECT ProductID, ProductName, (UnitsInStock * UnitPrice) AS [Inventory Value]
FROM Products
ORDER BY [inventory value] DESC;

--4. Customers Table. Show customer ID, contact name, and contact's first name. Rename the columns to [ID], [contact full name], and [contact first name] - order by contact names. Search for the position of the space in a ContactName using the CHARINDEX() function and extract the characters before the sace using the functions LEFT() and CHARINDEX().
SELECT CustomerID AS [ID],
       ContactName AS [Contact Full Name],
       LEFT(ContactName, CHARINDEX(' ', ContactName) - 1) AS [Contact First Name]
FROM Customers
ORDER BY [Contact Full Name];

--5. Show the customer ID, company name, and City and Country concatenated with a comma (Use the plus sign). The city and country should be in one column called [Address] - example: Paris, France
SELECT CustomerID AS [ID],
       CompanyName,
       City + ', ' + Country AS [Address]
FROM Customers;




