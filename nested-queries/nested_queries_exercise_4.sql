-- 01 name of the most expensive product
select productName, unitPrice
from products
where unitPrice = (
	select max(unitPrice) from products
);

-- 02 order ID, shipping name, and address for orders using federal shipping
select orderID, shipName, shipAddress
from orders
where ShipVia = (
	select shipperID
    from shippers
    where CompanyName = 'Federal shipping'
);

-- 03 order IDs of orders that included "Sasquatch Ale"
select orderID
from `order details`
where productID = (
	select productID
    from products
    where productName = 'Sasquatch Ale'
);

-- 04 name of employee that sold order 10266
select firstName, lastName
from employees
where EmployeeID = (
	select EmployeeID
    from orders
    where OrderID = 10266
);

-- 05 name of customer who bought order 10266
select contactName
from customers
where CustomerID = (
	select CustomerID
    from orders
    where OrderID = 10266
);