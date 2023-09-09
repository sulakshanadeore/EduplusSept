select * from Products

select  ProductName,ProductID from products 
select  ProductID,ProductName from products


select  ProductName,ProductID from products order by productid
select  ProductID,ProductName from products order by ProductID


select CategoryID,CategoryName from Categories order by CategoryName desc
select CategoryName,CategoryID from Categories order by 2 desc

select ProductID,ProductName,SupplierID,CategoryID,UnitPrice from Products
order by SupplierID

select ProductID,ProductName,SupplierID,CategoryID,
UnitPrice
from Products 
where  ProductID=1 or ProductID=2 or ProductID=3
order by 3,4 desc

select ProductID,ProductName,SupplierID,CategoryID,
UnitPrice
from Products 
where  ProductID in(1,2,3,4,5,100)
order by 3,4 desc

select ProductID,ProductName,SupplierID,CategoryID,
UnitPrice
from Products 
where  ProductID between 1 and 5
order by 3,4 desc


select ProductID,ProductName,SupplierID,CategoryID,
UnitPrice from Products
where ProductName='Tofu' or ProductName='aniseed syrup'


select ProductID,ProductName,SupplierID,CategoryID,
UnitPrice from Products
where ProductName in('Tofu','aniseed syrup')
select * from Orders
where orderdate= '1996-07-04' or OrderDate='1996-07-05'
select * from Orders
where orderdate<> '1996-07-04' and OrderDate<>'1996-07-05'

select * from Orders
where orderdate!= '1996-07-04' and OrderDate!='1996-07-05'
select * from Orders
where orderdate in('1996-07-04','1996-07-05')
select * from Orders
where orderdate not in('1996-07-04','1996-07-05')
select orderid,convert(varchar,orderdate,0) "OrderDate-Monddyyyy" from Orders
where orderdate not between '1996-07-01'  and '1996-07-31'


select orderid,orderdate from Orders
where convert(varchar,orderdate,3)  not between '01-07-96'  and '31-07-96'

select * from Products
where (SupplierID=2 and CategoryID=2) or UnitPrice between 53 and 76

select * from Products
where (SupplierID=2 and CategoryID=2) and  UnitPrice between 20 and 25


select getdate()---2023-09-09 10:41:09.477
select convert(varchar,getdate(),1)



sp_help categories
insert into Categories(CategoryName,Description)
values('ACategory','New category')
---------------------------------------------------------

select sum(unitprice) from products
select count(unitprice) from Products
select * from Products

select * from Categories
select count(*) from  Categories
select count(CategoryName) from  Categories

select * from Employees
select count(region) from Employees

select sum(unitprice) from Products
select round(avg(unitprice),2) from Products
select min(unitprice) from Products

select max(unitprice) from Products
where CategoryID=3

select * from Products

select categoryid,count(productid) countofProducts from Products
group by CategoryID

select categoryid,avg(unitprice) countofProducts from Products
group by CategoryID
select count(quantity) from [Order Details]
where ProductID=11

select productid, sum(quantity) as totalQtySold from [Order Details]
where ProductID=11 or ProductID=12
group by ProductID
order by ProductID

select orderid,sum(quantity) as totalQtySold from [Order Details]
where orderid=10248
group by OrderID

select orderid,productid,sum(quantity) as totalQtySold from [Order Details]
where OrderID=10248
group by OrderID,productid

select * from [Order Details]

select orderid,sum(unitprice*quantity) from [Order Details]
group by OrderID

select * from [Order Details]
where orderid=10250

select unitprice*quantity as withoutdiscount,
(unitprice*quantity)*discount as discount,
(unitprice*quantity)-(unitprice*quantity)*discount as totalValue
from [Order Details]
where  orderid=10250

select 77+1261.4+214.2

select  orderid,(unitprice*quantity) as withoutdiscount,
((unitprice*quantity)*discount) as discount,
sum((unitprice*quantity)-((unitprice*quantity)*discount)) as totalValue
from [Order Details]
group by orderid,(unitprice*quantity),((unitprice*quantity)*discount)
order by OrderID


select  orderid,(unitprice*quantity) as withoutdiscount,
((unitprice*quantity)*discount) as discount,
sum((unitprice*quantity)-((unitprice*quantity)*discount)) as totalValue
from [Order Details]
group by rollup(orderid,productid,(unitprice*quantity),((unitprice*quantity)*discount))
order by OrderID

select orderid,sum((unitprice*quantity)-((unitprice*quantity)*discount)) as totalValue
from [Order Details]
group by rollup(orderid)


select 455.75+276.75+327.08+287.30+141.75+324.04+161.85+248.19

select categoryid,sum(unitprice) from products
group by rollup(CategoryID)


select  orderid,sum((unitprice*quantity)-((unitprice*quantity)*discount)) as totalValue
from [Order Details]
group by  orderid



select * from [Order Details]




select * from [Order Details]

select productname,upper(productname),lower(productname),len(productname) from Products

select 2222.71/77





