Create database company;
use company;
select * from sales;
select * from sales where ship_mode = 'Economy' and total_amount > 25000;

select * from sales where category = 'Technology'and country = 'Ireland' and Order_date > '2020-01-01';

select * from sales
order by Unit_Profit DESC
limit 10;

select * from sales
order by Unit_Profit DESC
limit 10, 20;

select * from sales
where Customer_Name LIKE'J%N';

select Product_Name from Sales where product_name like '%Acco%';

select city, SUM(Total_Amount) as Total_Sales 
from sales 
Group by city
order by Total_Sales desc 
limit 5;


Select Customer_Name, Total_Amount from Sales
order by total_amount desc
limit 10, 10;

select SUM(Total_Amount) as 'Total Revenue' ,
		AVG(Unit_Cost) as 'Average Unit Cost',
        COUNT(ï»¿Order_ID) as 'Total Number of orders'
from Sales;

select count(distinct region) as unique_name from sales;

Select customer_name, count(ï»¿Order_ID) as Order_Count
from sales
group by customer_name
order by Order_Count desc;

select product_name, sum(Total_amount) as Total_Sales,
	   Rank() over (order by sum(Total_amount) desc) as Sales_Rank
from sales
group by Product_name
limit 5;