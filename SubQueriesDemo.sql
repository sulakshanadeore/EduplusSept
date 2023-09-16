use northwind
go
select * from employees where city=(select city from customers where customerid like 'AROUT')

select distinct city from customers

select * from employees where city in(select distinct city from customers)


select * from products
where unitprice in(select distinct unitprice from products 
where categoryid=1)
order by CategoryID


--asc--max---263.50
--desc---min---4.5
select distinct unitprice from products 
where categoryid=1
order by UnitPrice desc


select * from products
where categoryid!=1  and unitprice >(select min(unitprice) from products 
where categoryid=1)
order by unitprice


select CategoryID,min(unitprice) from products
group by CategoryID

select * from products where UnitPrice in (
select min(unitprice) from products
group by CategoryID)
order by unitprice



select * from products where UnitPrice > all (
select min(unitprice) from products
group by CategoryID)
order by unitprice


select * from products where UnitPrice > any (
select min(unitprice) from products
group by CategoryID
)
order by unitprice

--from 
--where
--having

select S1.CategoryID,count(*) from 
(select * from products) S1
where s1.UnitPrice > all 
(select min(unitprice) from products
group by CategoryID)
group by S1.categoryid

select * from customers

select * from orders
select 830*91


select * from customers where customerid like 'VINET' ---Vins et alcools Chevalier--10248
select * from customers where customerid like 'TOMSP' ----Toms Spezialitäten---10249

select  o.orderid,c1.customerid, c1.companyname,sum(od.quantity*od.unitprice) as OrderValue from orders o,
(select * from customers) c1,[Order Details] od
where o.customerid  in ( select  customerid from Customers) and o.CustomerID=c1.CustomerID and
o.OrderID=od.orderid
group by o.orderid,c1.customerid, c1.companyname
order by o.OrderID

select * from products
order by CategoryID

select categoryid, min(unitprice) from products
group by  CategoryID

select productid,UnitPrice,CategoryID from products p
where  UnitPrice > 
(select min(p1.unitprice) minprice from products  p1
where p.CategoryID=p1.CategoryID
group by p1.categoryid) 


1	4.50
2	10.00
3	9.20
4	2.50
5	7.00
6	7.45
7	10.00
8	6.00









select * from [Order Details]
select * from orders
select orderid,sum(quantity*unitprice) from [Order Details]
group by orderid


select max(unitprice) from products
group by CategoryID






