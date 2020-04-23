--1--
select substring(productDescription,1,50) as "Title of products" from products;
--2--
select concat(firstName," ",lastName,", ",jobTitle) as "Detail Employee" from employees;
--3--
select productCode, productName,  if(productLine like '%Cars%','Automobiles',productLine)productLine, productDescription   	   country  
from  products; 
--4--
select orderNumber, if(datediff(requiredDate,shippedDate)>=0, datediff(requiredDate, shippedDate),1000000) as 'daysleft' 
from orders order by daysleft ASC limit 5;
--5--
select * from orders 
where orderDate>= '2005-5-1' and orderDate < adddate('2005-5-1', interval 30 day) and shippedDate is null;   

