-- Database created
create database swiggy;

-- Database select
use swiggy;

-- Number of row
select count(*) as total_rows from swiggy;

-- Data analysis

-- Avg order price
select round(avg(price),1) as avg_price_of_order
from swiggy;

-- total sales
select sum(price) as total_sales
from swiggy;

-- Avg rating
select round(avg(`Avg ratings`),1) as avg_rating
from swiggy;

-- Total orders
select count(ID) as total_number_of_order
from swiggy;

-- Higest orderd Food type
select 
`Food type` ,count(*) as total_order
from swiggy
group by `Food type`
order by total_order desc;

-- Higest rated city
select 
city ,round(avg(`Avg ratings`),1) as avg_Rating
from swiggy
group by city
order by avg_Rating desc; 

-- Number of Restaurant
select 
Restaurant ,count(*) as count
from swiggy
group by Restaurant
order by count desc;

-- Avgrage price of food type
select 
`Food type`,round(avg(price),1)as avg_price
from swiggy
group by `Food type`
order by avg_price desc;

-- Avgrage raing of food type
select 
`Food type`,round(avg(`Avg ratings`),1)as avg_rating
from swiggy
group by `Food type`
order by avg_rating desc;

-- Avgrage price and raing of the food in every Restaurant
select 
Restaurant ,
round(avg(`Avg ratings`),1)as avg_rating,
round(avg(price),1)as avg_price
from swiggy
group by Restaurant;


