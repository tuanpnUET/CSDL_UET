--vidu1--
select officeCode, city, phone
from offices 
where country in ('USA','France');
--vidu2--
Select officeCode, city, phone
from offices
where country not in ('USA','France');
--vidu3--
select productCode, ProductName, buyPrice
from products
where buyPrice between 90 and 100
order by buyPrice DESC
--vidu4--
select employeeNumber, lastName, firstName
from employees
where firstName like 'a%';
--vidu5--
select Firstname, LastName, jobtitle
from Employees
Order by firstname ASC, jobtitle DESC;
--vidu6--
select productName
from Products
order by quantityInStock;
--vidu7--
select customerNumber id, contactlastname name
from customers
union select employeeNumber id, firstname name
from employees
--Bai Tap--
--b1--
Select * from customers
where city in ('Nantes','Lyon');
--b2--
select * from orders
where shippedDate between '2003/10/1' and '2003/10/3';
--b3--
select * from productlines
where productLine like '%CARS%';
--b4--
select * from products
order by quantityInStock DESC limit 10;
--b5--
select *, (buyPrice * quantityInStock) as tienHangTon from products;