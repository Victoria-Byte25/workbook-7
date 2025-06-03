use northwind;
select productID, productName, unitPrice
from products;

-- 03 ordered by price lowest to highst
select productID, productName, unitPrice
from products
order by unitPrice asc;

-- 04 where unit price is $7.50 or less
select productID, productName, Unitprice
from products
where unitPrice <= 7.50;

-- 05 products with at least 100 units, from high to low
select productID, productName, unitPrice, unitsInStock
from products
where unitsInStock >= 100
order by unitPrice desc;

-- 06 if 2+ item have the same price order by product name
select productID, productName, unitPrice, unitsInStock
from products
where unitsInStock >= 100
order by unitPrice desc, productName asc;

-- 07 products with 0 in stock but on back order
select productID, productName, UnitsInStock, UnitsOnOrder
from products
where UnitsInStock = 0 and UnitsOnOrder > 0
order by productName;

describe products;

-- 08 Nmae of table that holds product categories
select * from categories;

-- 09 All rows and columns from categories and ID of seafood
select * from categories;
-- CategoryID of Seafood = 8

-- 10 How does products know the category
select p.productID, p.productName, p.unitPrice, c.categoryName
from products p
join categories c on p.categoryID = c.categoryID
where c.categoryName = 'Seafood';

-- 11 first and last name of all employees
select firstName, lastName
from employees;

-- 12 employees with manager title
select firstName, lastName, title
from employees
where title like '%manager%';

-- 13 distinct job titles in employees
select distinct title
from employees;

-- 14 employees salary between 2000 and 2500
select firstName, lastname, salary
from employees
where salary between 2000 and 2500;

-- 15 list of all suppliers info
select *
from suppliers;

-- 16 what supplier provides "Tokyo Traders" products
select productID, productName
from products
where supplierID = (
	select supplierID
    from suppliers
    where companyName = 'Tokyo Traders'
    );