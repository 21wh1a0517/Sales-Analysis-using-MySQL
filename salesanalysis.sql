-- create database COMPANY;

-- use COMPANY;

-- SELECT * FROM sales;

/*Q1. Find all orders shipped via 'Economy' mode with a total amount greater than ₹25,000
select * from sales where Ship_Mode ='Economy' and Total_Amount>25000;*/

/*Q2. Retrieve all sales data for 'Technology' category in 'Ireland' made after 2020-01-01
select * from sales where category='Technology' and country='Ireland' and  Order_Date>'2020-01-01';*/

/*Q3. List the top 10 most profitable sales transaction in descending order.
select * from sales order by Unit_Profit  desc limit 10; -- top 10 transactions
select * from sales order by Unit_Profit  desc limit 10,20; -- skip 10 records, showing next 20 records*/

/*Q4. Find all order_id,customer_name customers whose name starts with 'J' and ends within 'n'.
select Order_ID, Customer_Name from sales where customer_name like 'J%N'; */

/*Q5. Retrieve all product names that contain 'Acco' anywhere in the name.
select Order_ID, Product_name from sales where Product_Name like '%Acco%';*/

/* Q6. Get the top 5 cities with the highest total sales account.order_id,city,total_amount
select Order_Id, City, Total_Amount from sales order by Total_Amount desc limit 5;
select City, sum(Total_Amount) as Total_sales from sales group by City order by Total_sales desc limit 5;*/

/*Q7. Dsiplay the second set of 10 records for customer_name and Total_Amount in descending order
select  Customer_Name, Total_Amount from sales order by Total_Amount desc limit 10,10;*/

/*Q8. Find the total revenue, avergae unit cost, and total number of orders.
select sum(Total_Amount) as `TOTAL REVENUE`, AVG (Unit_Cost) as `average unit cost`, count(order_ID) as `total number of orders` from sales;*/

/*Q9. count unique number of region
SELECT COUNT(DISTINCT region) AS unique_region_count FROM sales ;*/

/*Q10. find number of orders places by each customer
SELECT customer_Name, COUNT(*) AS order_count FROM sales GROUP BY customer_Name order by order_count;*/

/*Q11. Rank 5 products based on total sales using RANK(). --row number, dense rank,rank
select Product_name, sum(Total_Amount) as Total_sales, Rank() over (order by sum(total_amount ) desc) as sales_rank from sales group by Product_Name limit 5;*/




