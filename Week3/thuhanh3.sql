USE classicmodels;
--cac vi du trong bai hoc--
select lastname, firstname, jobtitle from employees;
select ProductCode, ProductName from products;
select FirstName, LastName, email from Employees 
where jobtitle = "President";
select * from Customers where customerNumber  = 112;
select * from orders where customerNumber = 181;
select * from customers where country = 'USA' and salesRepEmployeeNumber = 1165;
select * from orders where status = 'On Hold' or status = 'In Process';
select distinct jobTitle From employees;
select distinct productCode from orderdetails;
select productName From Products limit 5;
select * from customers where country = 'France' limit 10;
--bai tap thuc hanh--
--b1--
select * from employees where reportsTo is null;
--b2--
select customerNumber from orders; 
--b3--
select * from orders where requiredDate = '2003/01/18';
--b4--
select * from orders where status = 'Shipped' and orderDate > '2005/03/31' and orderDate < '2005/05/01';
--b5--
select * from products where productLine = 'Classic Cars'; 