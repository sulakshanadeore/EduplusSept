select * from products
select * from Suppliers
select * from Categories

MYSQL/SQLSERVer
select ProductID,ProductName,p.CategoryID,CategoryName,p.SupplierID,CompanyName
from products p  inner join   categories c 
on c.categoryid=p.categoryid
inner join Suppliers  s  on  s.supplierid=p.supplierid
order by CategoryID


MySQLxxxxx
ANSI Syntax----ORacle/MySQL
select ProductID,ProductName,p.CategoryID,CategoryName,p.SupplierID,CompanyName
from products p ,   categories c ,Suppliers  s
where  c.categoryid=p.categoryid and p.SupplierID=s.SupplierID
order by CategoryID

select * from products
select * from employees
select 77*9

select * from Products,employees





