-- Using COUNT() for row counting
select count(distinct categoryName) from categories; 

-- Summing data with SUM()
select sum(unitprice) from products;

-- Summing data with SUM()
select avg(unitprice), sum(unitprice)
from products;

-- Working with GROUP BY
select sum(salary), round(avg(salary), 2) from employees; 

-- Identifying extremes with MIN() and MAX() 
select min(salary) from employees;
select max(salary) FROM employees; 

-- Grouping data with GROUP BY
select employeeID, round(avg(salary), 2) 
from employees
group by employeeID
order by salary asc;

-- Using multiple columns in GROUP BY
select firstname , AVG(salary)
from employees
group by firstname
having 'salary' < 1000;  

-- using HAVING with aggregate functions in MySQL
select p.SupplierID, 
s.CompanyName,
count(*) as products_count, 
sum(p.unitprice) as total_amount_of_price
from products as p 
join suppliers s
 on p.supplierID = s.SupplierID
group by p.supplierID, s.companyname
having total_amount_of_price < 100;



