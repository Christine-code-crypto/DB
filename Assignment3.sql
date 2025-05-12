-- Create database for Expense Tracker
CREATE DATABASE ExpenseTracker;
-- Use the Expense Tracker database
USE ExpenseTracker;
-- Retrieve all records from the expenses table
SELECT *
FROM expenses;
-- Use LIKE with wildcards (%) to find expenses containing "food" in the description
SELECT *
FROM expenses
WHERE description LIKE '%food%';
-- Retrieve all expenses greater than $100
SELECT *
FROM expenses
WHERE amount > 100;
-- Use AND to filter expenses: amount > $50 AND category = 'Groceries'
SELECT *
FROM expenses
WHERE amount > 50
    AND category = 'Groceries';
-- Use OR to filter expenses: amount < $20 OR category = 'Entertainment'
SELECT *
FROM expenses
WHERE amount < 20
    OR category = 'Entertainment';
-- Use NOT to exclude expenses categorized as "Rent"
SELECT *
FROM expenses
WHERE category NOT LIKE 'Rent';
-- Order expenses by amount in descending order (highest to lowest)
SELECT *
FROM expenses
ORDER BY amount DESC;
-- Order expenses by category in ascending order (A-Z)
SELECT *
FROM expenses
ORDER BY category ASC;
-- Combine multiple filters: amount > $50, exclude "Rent", and sort by amount (highest first)
SELECT *
FROM expenses
WHERE amount > 50
    AND category NOT LIKE 'Rent'
ORDER BY amount DESC;