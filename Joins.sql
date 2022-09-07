/* joins: select all the computers from the products table:productsproductsproducts
using the products table and the categories table, return the product name and the category name */
 
 select P.Name AS ProductName, C.Name AS CategoryName
 From products AS P 
 Inner Join categories AS C 
 on C.CategoryID = P.CategoryID
 Where C.Name = 'Computers';
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
select p.Name , p.Price, reviews.ratings
From products
INNER JOIN reviews ON reviews.ProductID = p.ProductID
Where reviews.Rating = '$5$';

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT employees.FirstName, employees.LastName, Sum(sales.quantity) 
from sales
INNER JOIN employees
on sales.EmployeeID = employees.EmployeeID
group by employess.EmployeeID
Order by total desc 
limit 2;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT Departments.Name As 'department name', categories.Name as 'category name'
FROM departments 
INNER JOIN categories
on departments.DepartmentId = categories.DepartmentID
where categories.Name = 'Appliances' Or categories.Name = "games";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 Select p.Name , Sum(s.Quantity) as "total units sold",
 sum(s.quantity * s.PricePerUnit) as "total price sold"
 from products as p 
 INNER JOIN sales as S
 on s.Productid = p.ProductID
 where name like '%Eagles: Hotel California%';
 

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select products.NAME, reviews.Reviewer, reviews.Rating, reviews.Comment 
from products 
inner join reviews
ON products.ProductID= reviews.ProductID
where products.ProductID = 857 and reviews.Rating = 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */