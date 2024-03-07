--Assignment #1. No-table SELECT SQL

--#1. Show 'Ava', 'Smith', 'female', '27' in four-row column table
SELECT 'Ava' AS [First Name], 'Smith' AS [Last Name], 'Female' AS [gender], 27 AS [age]

--#2. Show the SQRT of the number 8597 in one-column, one-row table. Column name is Square Root.
SELECT SQRT(8597) AS [Square Root]

--#3. Show the result of this calculation in a one-row, one-column table: ((54.0*77.0)+6.0)/2.0. Name column Result.
SELECT ((54.0*77.0)+6.0)/2.0 AS [Result]

--#4. Show 3-column, 1-row table that has 875, 'Boo', 857/25 in the columns. Column names are Number, Name, Calculation Result
SELECT 875 AS [Number], 'Boo' AS [Name], 857/25 AS [Calculation Result]
--In case of typo, final column as 875/25
SELECT 875 AS [Number], 'Boo' AS [Name], 875/25 AS [Calculation Result]

--#5. Combine strings 'James', 'P.', and 'Sullivan' with a space between them in a single-row, single-column table using single SELECT statement and +operators. Name Column MonsterName
SELECT 'James' + ' ' + 'P.' + ' ' + 'Sullivan' AS [MonsterName]

--6. Show the current server time in a column named Current System Time. Use the GETDATE() function.
SELECT GETDATE() AS [Current System Time]
