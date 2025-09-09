-- Week 6 Database Assignment: Joins and Relationships
-- Student: Hlomohang Sethuntsa
-- Date: 09/09/2025

-- =====================================================
-- Question 1: INNER JOIN - Employees and Offices
-- =====================================================
-- Get firstName, lastName, email, and officeCode of all employees
-- Use INNER JOIN to combine employees and offices tables

SELECT 
    e.firstName,
    e.lastName, 
    e.email,
    e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

-- =====================================================
-- Question 2: LEFT JOIN - Products and Product Lines
-- =====================================================
-- Get productName, productVendor, and productLine from products table
-- Use LEFT JOIN to combine products with productlines table

SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;

-- =====================================================
-- Question 3: RIGHT JOIN - Customers and Orders
-- =====================================================
-- Get orderDate, shippedDate, status, and customerNumber for first 10 orders
-- Use RIGHT JOIN to combine customers with orders table

SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
LIMIT 10;