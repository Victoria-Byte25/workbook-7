-- 01 Add new supplier
insert into suppliers (companyName, contactName, contactTitle, city, country)
values ('Hydra intl.', 'Naade B.', 'CEO', 'Dallas', 'USA');

-- 2 Add new product provided by the supplier
select supplierID from suppliers where CompanyName = 'Hydra intl.';
insert into products (productName, supplierID, categoryID, unitPrice, unitsInStock)
values ('Berry Candle', 30, 1, 15.99, 30);

-- 03 List of all products and suppliers
select
	p.productID,
    p.productName,
    s.companyName as supplier
from products p
join suppliers s on p.SupplierID = s.SupplierID;

-- 04 Raise the price of new product by 15%
update products
set unitPrice = unitPrice * 1.15
where productName = 'Berry Candle';

-- 05 list of all product from the supplier
select productName, unitPrice
from products
where SupplierID =(
	select SupplierID from suppliers where CompanyName = 'Hydra intl.'
);

-- 06 delete new product
delete from products
where ProductName = 'Berry Candle';

-- 07 delete new supplier
delete from suppliers
where CompanyName = 'Hydra intl.';

-- 08 list all products
select * from products;

-- 09 list all suppliers
select * from suppliers;