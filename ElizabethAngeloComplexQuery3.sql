SELECT C.State, S.BookID, B.Title, S.Quantity AS TotalSales--listing BookIDs sold (from the table Sale), book titles (from the table Book), customers' State (from the table Customer), quantity as TotalSales(from the table Sale)

FROM Sale S -- filtering data will be retrieved from the Sale table

INNER JOIN Customer C ON C.ID = S.CustID -- the information to answer the current question is spread in three tables: Sale, Customer, and Book

INNER JOIN Book AS B ON B.ID = S.BookID -- joins the Book and Sale tables with the common 'ID' from 'Book' and 'BookID from Sale. 

WHERE (C.State = 'CO' OR C.State = 'OK') -- filtering for customers from Colorado or Oklahoma

   AND MONTH(S.Date) = 2   -- filtering for sales in February

   AND YEAR(S.Date) = 2020 -- filtering for sales in 2020

   AND B.ID IN             -- filtering for books with a single author

      (SELECT BookID        -- listing from the book table using the book ID

      FROM BookAuthor       -- filtering for authors using table BookAuthor

      GROUP BY BookID       -- filtering by bookID 

      HAVING COUNT(*) = 1) -- filtering for books with 1 singular author

GROUP BY C.State, S.BookID, B.Title, S.Quantity; -- final table column structure

-- The SELECT statement defines the columns displayed in the final result, including the customers' state, book ID, book title, and the quantity of sales. The quantitiy of sales was renamed as Total Sales.
-- The FROM clause is from Sales S, specifying where the data will be retrieved from.
-- The INNER JOIN clause: Customer C ON C.ID = S.CustID joins the Customer and Sale tables with the common 'ID' from both tables. Sale alias S.
-- The INNER JOIN clause: Book AS B ON B.ID = S.BookID joins the Book and Sale tables with the common 'ID' from 'Book' and 'BookID from Sale. Book alias B.
-- The WHERE clause filters for the states Colorado and Oklahoma, allowing the results to only include customers from the two states. 
-- The WHERE clause then filters for the second month of the year (February) using MONTH(S.Date) = 2. 2 - second month of year.
-- The WHERE clause then filters for the year 2020 with YEAR(S.Date) = 2020.
-- The WHERE B.ID IN allows for a subquery SELECT statement to filter for books with a single author, counting the number of authors for each book in the table BookAuthor, selecting books with only 1 author with 'HAVING COUNT(*) = 1'
-- The GROUP BY clause specifies how the results of the query will be grouped in the final results. The order customer state, book ID, book title, and quantity ensures the query returns aggregated data for the specific combination of those four columns.
-- The final results shows the aggregated data of the quantity of books with one author sold, in the customer States Colorado, and Oklahoma. Including their correlating book title and book ID. 

-- I learned that as long as you know where you need to pull data from, how to connect the needed tables together, and are able to keep a consistent structure when writing a query, the results should run smoothly when the query is complete.
-- A complex query does not need to be overly complicated. Over thinking, and adding additional lines that are unneccessary may still give a table of results, but may be incorrect for the intent behind the query. A query can be simply written, and still give extensive results if done correctly.