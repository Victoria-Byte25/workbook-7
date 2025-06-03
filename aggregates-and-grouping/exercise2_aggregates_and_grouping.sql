-- 1 how many suppliers are there
select count(*) as totalSuppliers
from suppliers;

-- 2 the sum of all employees salary
select sum(salary) as totalPayroll
from employees;

-- 3 price of the cheapest item
select min(unitPrice) as cheapestItem
from products;

-- 4 average price of items
select avg(unitPrice) as averagePrice
from products;

-- 5 the most expensive item
select max(unitPrice) as mostExpensiveItem
from products;

-- 6 supplierID and number of items they supply
select supplierID, count(*) as itemSupplied
from products
group by SupplierID;

-- 7 category ID of each category and average price of items
select categoryID, avg(unitPrice) as asverageCategoryPrice
from products
group by CategoryID;

-- 8 suppliers that provide at least 5 items
select supplierID, count(*) as itemsSupplied
from products
group by SupplierID
having count(*) >= 5;

-- 9 product ID, Name, inventory value, sorted by value descending
select
	productID
    productName,
    unitPrice * unitsInStock as inventoryValue
from products
order by inventoryValue desc, productName asc;