--1--
select * from employees inner join offices on employees.officeCode = offices.officeCode;
--2--
select products.productCode,orderNumber from products left join orderdetails on products.productCode = orderdetails.productCode where orderNumber is null;
--3--
select orders.orderDate,orders.requiredDate,orders.status,(orderdetails.priceEach * orderdetails.priceEach) as total 
from orders inner join orderdetails on orders.orderNumber = orderdetails.orderNumber 
where extract(month from orders.orderDate) = 3 and extract(year from orders.orderDate) = 2003;
--4--
select productlines.productLine,SUM(orderdetails.quantityOrdered) totalAmount
from orders 
	inner join orderdetails on orders.orderNumber = orderdetails.orderNumber 
    inner join products on orderdetails.productCode = products.productCode
    inner join productlines on products.productLine = productlines.productLine
group by productlines.productLine order by totalAmount desc;
--5--
select customers.customerNumber,customers.customerName, SUM(orderdetails.quantityOrdered * orderdetails.priceEach) total
from customers 
	inner join orders on orders.customerNumber = customers.customerNumber
    inner join orderdetails on orders.orderNumber = orderdetails.orderNumber
group by customers.customerNumber