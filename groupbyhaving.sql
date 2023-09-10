use northwind
go

select distinct categoryid,UnitPrice
from products

select * from products
where CategoryID=1

select distinct(title) from Employees

select * from employees
select distinct FirstName, city from employees


select * from products
where unitprice in (263.50,
123.79,97.00,81.00,62.50,55.00,53.00,49.30,46.00,45.60,43.90,40.00)

select * from products
where unitprice in(select distinct top 12 unitprice from products
order by unitprice desc)






select distinct top 12 unitprice from products
order by unitprice desc


select categoryid, count(unitprice) as productCountCategoryWise from products
group by rollup (CategoryID)

select categoryid, count(unitprice) as productCountCategoryWise from products
group by rollup (CategoryID,UnitPrice)

select categoryid,sum(unitprice) sumOfPricesCategoryWise from products
group by CategoryID
having sum(unitprice)>300 and sum(unitprice)<400
order by sumOfPricesCategoryWise

select productid,categoryid, sum(unitprice),count(productid) as productCountCategoryWise from products
group by rollup (unitprice,productid,categoryid)

select * from products
order by CategoryID

select count(*) from products
where CategoryID=8

select abs(-123)
select getdate()+1

select getdate()+30
select DATEADD(DW,1,getdate())
select datepart(week,getdate())
select distinct datediff(Year,orderdate,getdate()) from Orders
select DATENAME(YEAR,getdate())
select datepart(M,getdate())
select DATETRUNC(YY,getdate())
select EOMONTH(getdate())
select distinct datename(M,orderdate),EOMONTH(orderdate) from Orders
order by datename(M,orderdate)
select ISDATE(getdate())
select ISDATE('2023-01-29')-- valid 1(single quote is necessary for date)
select getdate()---yyyy-mm-dd
select datename(Q,getdate())
select orderdate,datename(Q,orderdate) quarterno, count(datename(Q,orderdate)) count from Orders
group by rollup(OrderDate)
order by datename(Q,orderdate)

select orderdate,count(OrderDate) countoforders,datename(Q,orderdate) from Orders
where datename(Q,orderdate)=3 and OrderDate between '1996-01-01' and '1996-12-31'
group by rollup(OrderDate)
select switchoffset(SYSDATETIME(),-330)
select TODATETIMEOFFSET(SYSDATETIME(),-330)

select orderdate,convert(varchar,orderdate,3) from orders
where datename(Q,orderdate)=3 and (convert(varchar,orderdate,3) between '01/01/96' and '31/12/96')


create table students
(rollno int primary key,
name varchar(20),
city varchar(20))

insert into students(rollno,name) values(2,'Manju')
insert into students values(1,'Anu','Pune')

select * from students

insert into students values (3,'Jack','Mumbai'),(4,'Jim','Pune'),(5,'Tim','Pune')

select *  into newproducts  from Products

select * from newproducts
