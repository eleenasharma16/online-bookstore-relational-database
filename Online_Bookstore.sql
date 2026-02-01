-- CREATE DATABASE online_bookstore;
USE online_bookstore;
-- CREATE TABLE Books(
-- Book_ID INT AUTO_INCREMENT PRIMARY KEY,
-- Title VARCHAR(100),
-- Aurthor VARCHAR(100),
-- Genre VARCHAR(50),
-- Published_Year INT,
-- Price DECIMAL(10,2),
-- Stock INT
-- );

-- CREATE TABLE Customers(
-- Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
-- Name VARCHAR(50),
-- Email_ID VARCHAR(50),
-- Phone_no VARCHAR(15),
-- City VARCHAR(50),
-- Country VARCHAR(100)
-- );

-- CREATE TABLE Orders(
-- Order_ID INT AUTO_INCREMENT PRIMARY KEY, 
-- Customer_ID INT REFERENCES Customers(Customer_ID),
-- Book_ID INT REFERENCES Books(Book_ID),
-- Order_Date DATE,
-- Quantity INT,
-- Total_Amt DECIMAL(10,2)
-- );
--   SELECT * FROM Books;
--   select * FROM Customers;
  -- SELECT * FROM Orders;
-- CREATE TABLE Orders (
--     Order_ID INT AUTO_INCREMENT PRIMARY KEY,
--     Customer_ID INT,
--     Book_ID INT,
--     Order_Date DATE,
--     Quantity INT,
--     Total_Amt DECIMAL(10,2),
--     FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
--     FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
-- );

-- DROP TABLE Orders;
-- CREATE TABLE Orders (
--     Order_ID AUTO_INCREMENT PRIMARY KEY,
--     Customer_ID INT REFERENCES Customers(Customer_ID),
--     Book_ID INT REFERENCES Books(Book_ID),
--     Order_Date DATE,
--     Quantity INT,
--     Total_Amount NUMERIC(10, 2)
-- );

-- CREATE TABLE Orders(
--  Order_ID INT PRIMARY KEY, 
--  Customer_ID INT REFERENCES Customers(Customer_ID),
--  Book_ID INT REFERENCES Books(Book_ID),
--  Order_Date DATE,
--  Quantity INT,
--  Total_Amt DECIMAL(10,2)
--  );
 -- DROP TABLE Orders;
--  CREATE TABLE Orders(
--  Order_ID INT AUTO_INCREMENT PRIMARY KEY, 
--  Customer_ID INT REFERENCES Customers(Customer_ID),
--  Book_ID INT REFERENCES Books(Book_ID),
--  Order_Date DATE,
--  Quantity INT,
--  Total_Amt DECIMAL(10,2)
--  );

--  SELECT * FROM Orders;
--  SELECT * FROM Customers;
--  SELECT * FROM Books;
-- 1) Retrieve all books in the "Fiction" genre:
-- SELECT * FROM Books
-- WHERE Genre='Fiction';
-- 2) Find books published after the year 1950:
-- SELECT * FROM Books
-- WHERE Published_Year> 1950;
-- 3) List all customers from the Canada:
-- SELECT * FROM Customers
-- WHERE Country='Canada';
-- 4) Show orders placed in November 2023:
-- SELECT * FROM Orders
-- WHERE Order_Date BETWEEN '2023-11-01' AND '2023-11-30';
-- 5) Retrieve the total stock of books available:
-- SELECT SUM(Stock) AS Total_Stock
-- FROM Books;
-- 6) Find the details of the most expensive book:
-- SELECT * FROM Books
-- ORDER BY Price DESC
-- LIMIT 1; 
-- 7) Show all customers who ordered more than 1 quantity of a book:
-- SELECT * FROM Orders
-- WHERE quantity>1;
-- 8) Retrieve all orders where the total amount exceeds $20:
-- SELECT * FROM Orders
-- WHERE Total_Amt >20;
-- 9) List all genres available in the Books table:
-- SELECT DISTINCT Genre
-- FROM Books;
-- 10) Find the book with the lowest stock:
-- SELECT * FROM Books
-- ORDER BY stock
-- LIMIT 1;
-- 11) Calculate the total revenue generated from all orders:
-- SELECT SUM(Total_Amt) AS Revenue FROM Orders;
-- 12) Retrieve the total number of books sold for each genre:
-- SELECT * FROM ORDERS;
-- SELECT b.Genre, SUM(o.Quantity) AS Total_Books_sold
-- FROM Orders o
-- JOIN Books b ON o.book_id = b.book_id
-- GROUP BY b.Genre;
-- 13) Find the average price of books in the "Fantasy" genre:
-- SELECT AVG(price) AS Average_Price
-- FROM Books
-- WHERE Genre = 'Fantasy';
-- 14) List customers who have placed at least 2 orders:
-- SELECT o.customer_id, c.name, COUNT(o.Order_id) AS ORDER_COUNT
-- FROM orders o
-- JOIN customers c ON o.customer_id=c.customer_id
-- GROUP BY o.customer_id, c.name
-- HAVING COUNT(Order_id) >=2;
-- 15) Find the most frequently ordered book:
-- SELECT o.Book_id, b.title, COUNT(o.order_id) AS ORDER_COUNT
-- FROM orders o
-- JOIN books b ON o.book_id=b.book_id
-- GROUP BY o.book_id, b.title
-- ORDER BY ORDER_COUNT DESC LIMIT 1;
-- 16) Show the top 3 most expensive books of 'Fantasy' Genre :
-- SELECT * FROM books
-- WHERE genre ='Fantasy'
-- ORDER BY price DESC LIMIT 3;
-- 17) List the cities where customers who spent over $30 are located:
-- SELECT DISTINCT c.city, total_amount
-- FROM orders o
-- JOIN customers c ON o.customer_id=c.customer_id
-- WHERE o.total_amount > 30;
-- 18) Retrieve the total quantity of books sold by each author:
-- SELECT 
-- b.Aurthor,
-- SUM(o.Quantity) AS Total_books_sold
-- FROM Orders o
-- JOIN Books b 
-- ON o.Book_id = b.Book_id
-- GROUP BY b.Aurthor
-- ORDER BY Total_books_sold DESC;
-- 19) Calculate the stock remaining after fulfilling all orders:
-- SELECT b.Book_ID, b.Title, b.Stock, COALESCE(SUM(o.Quantity),0) AS Order_quantity,
-- b.Stock- COALESCE(SUM(o.Quantity),0) AS Remaining_Quantity
-- FROM Books b
-- LEFT JOIN Orders o ON b.Book_ID=o.Book_ID
-- GROUP BY b.Book_ID ORDER BY b.Book_ID;





















