-- 01 product name, product ID, unit price, and category name of all products
select
	p.productID,
    p.productName,
    c.categoryName
from products p
join categories c on p.CategoryID = c.CategoryID
order by c.CategoryName, p.ProductName;

-- 02 product ID, product name, unit price, and supplier name of all products that cost more than $75
select
	p.productID,
    p.productName,
    p.unitPrice,
    s.companyName as supplierName
from products p
join suppliers s on p.SupplierID = s.SupplierID
where p.UnitPrice > 75
order by p.ProductName;

-- 03 list product ID, product name, unit price, category name, and supplier name of ecery product
select
	p.productID,
    p.productName,
    p.unitPrice,
    c.categoryName,
    s.companyName as supplierName
from products p
join categories c on p.CategoryID = c.CategoryID
join suppliers s on p.SupplierID = s.SupplierID
order by p.ProductName;

-- 04 product name and categories of most expensive products
select
	p.productName,
    p.unitPrice,
    c.categoryName
From products p
join categories c on p.CategoryID = c.CategoryID
where p.UnitPrice = (
	select max(UnitPrice) from products
);

-- 05 list of order ID, ship address, and shipping company name of every order that shipped to Germany
select
	o.orderID,
    o.shipName,
    o.shipAddress,
    s.companyName as shippingComapny
from orders o
join shippers s on o.ShipVia = s.ShipperID
where o.ShipCountry = 'Germany';

-- 06 list of order ID, order date, ship name, and ship address of all orders that included "Sasquatch Ale"
select
	o.orderID,
    o.orderDate,
    o.shipName,
    o.shipAddress
from orders o
join `order details` od on o.orderID = od.OrderID
join products p on od.ProductID = p.ProductID
where p.ProductName = 'Sasquatch Ale';
    