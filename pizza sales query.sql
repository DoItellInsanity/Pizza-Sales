-- Total Revenue
/*select sum(total_price) as Total_Revenue from pizza_sales;*/

-- Total NUmber of Orders

/* select count(distinct order_id) as Number_of_Orders from pizza_sales; */

-- Avg order value

 /*select sum(total_price) / count(distinct order_id) as Avg_order_value from pizza_sales */

 -- Total Pizzas sold
 
 /* select sum(quantity) as total_pizzas_sold from pizza_sales */

 -- Total numbers of orders

 /* select count(distinct order_id) as num_of_orders from pizza_sales */

 -- Average number of pizza sold per order

 /* select (sum(quantity)/ count(distinct order_id)) as pizzas_per_order from pizza_sales */

 -- Daily Trends for total Orders

 /* select DATENAME(dw,order_date) as order_day, count(distinct order_id) as order_on_day from pizza_sales
 group by DATENAME(dw, order_date) 
 order by order_on_day desc */
 
 -- Monthly trend of orders 

 /*  select DATENAME(month, order_date) as Month_name, COUNT(distinct order_id) as orders from pizza_sales
 group by DATENAME(month, order_date) 
 order by orders desc */

--  Sales pizza by categories in percentage

/* select pizza_category, sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as percentage_of_order from pizza_sales
group by pizza_category */

-- Sales of pizza by size

/* select pizza_size , sum(total_price)*100/ (select sum(total_price) from pizza_sales) as order_pct_on_size from pizza_sales
group by pizza_size
order by order_pct_on_size desc */

-- Best selling pizzas

/* select pizza_name, sum(total_price) as Total_profit from pizza_sales
group by pizza_name
order by Total_profit desc */






