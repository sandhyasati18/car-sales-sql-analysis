#Dataset Overview
#The project involved multiple relational tables including:
Sales
Customers
Models
Dealership
Geography
Leads
Test Drive

#I used the sales table as the base table because it contained all transactional sales records.
# Using sales table as base we used left join to join all the other tables with each other. 

Select
    s.sale_id,
    s.sale_date, 	
    s.sale_price,

    c.customer_name,
    c.gender,
    c.age,

    m.model_name,
    m.segment,

    d.dealership_name,
    d.city AS dealership_city,
    d.region,

    g.city AS customer_city,

    l.lead_source,
    td.test_drive_id

From ecc.sales s

Left join ecc.customers c  #Joined customer data with sales to get how many customer have purchased the car
    on s.customer_id = c.customer_id

Left join ecc.models m  # Joined models with sales to know which model was sold most or least or accordingly
    on s.model_id = m.model_id

Left join ecc.dealership d #Joined dealership with sales to know which dealers have made the sale 
    on s.dealership_id = d.dealership_id

Left join ecc.geography g #Joined Geography with sales to know in which region the sales were made
    on s.geo_id = g.geo_id

Left join ecc.leads l #Joined leads with sales to get which leads made a sales
    on s.lead_id = l.lead_id

Left join ecc.test_drive td  #Joined test drives to get which test drives were connected to sales
    on s.lead_id = td.lead_id;


Q1.Find total sales by dealership.

Select d.dealership_name, count(s.sale_id) as total_sales
From ecc.sales s 
Left Join ecc.dealership d 
on d.dealership_id = s.dealership_id
Group by d.dealership_name 
order by total_sales desc;

Q2. Which age group buys the most cars?

Select case 
     when c.age < 25 then "Under 25"
     when c.age between 25 and 40 then "25-40"
     when c.age between 41 and 60 then "41-60"
     Else "60+"
End as Age_group,
count(s.sale_id) as total_sales
From ecc.sales s 
left join ecc.customers c 
on c.customer_id = s.customer_id 
Group by Age_group 
Order by total_sales desc;

Q3.Find top 3 cities with highest sales.

Select g.city,
    Count(s.sale_id) as total_sales
From ecc.sales s
Left join ecc.geography g
    on s.geo_id = g.geo_id
Group by g.city
Order by total_sales Desc
Limit 3;

Q4. Find second highest sold car model.

With CTE as(
Select m.model_name, 
Count(s.sale_id) as total_sales,
Dense_rank() over(order by Count(s.sale_id)desc) rn 
From ecc.sales s 
Left join ecc.Models m 
on m.model_id = s.model_id
Group by m.model_name)

Select Model_name, total_sales
From CTE 
Where rn = 2;

Q5. Find number of male and female customers who purchased cars.

Select c.gender,
    Count(s.sale_id) as total_purchases
From ecc.sales s
Left join ecc.customers c
    on s.customer_id = c.customer_id
Group by c.gender;

Q6. Which month generated the highest revenue?

Select
    Month(STR_TO_DATE(sale_date,'%d-%m-%Y')) As sales_month,
    Count(sale_id) As total_sales,
    Sum(sale_price) As total_revenue
From ecc.sales
Group by sales_month
Order by total_sales Desc;

#Key Insights:
The Analysis revealed that Chennai was top performing dealership, customers aged 41-60 where the primary buyers, Delhi, Mumbai, and 
Kolkata were the strongest markets, and the X3 model showed consistently high demand. 
I performed month-wise sales trend analysis also using the sales table. By grouping sales data by month and calculating both sales 
volume and revenue. I found that July was the highest-performing month with 90 sales and the highest revenue contribution. 
These insights can support better marketing, inventory planning, and dealership strategies. 

#Through this project, I used:
Joins
CTEs
Aggregate functions
Window functions
Case when 
Group by and Having 
Order by and Limit 
to solve business analytical problems.









