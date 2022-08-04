use olist2;

select * from olist.order_items;

SELECT max(price), min(price) FROM order_items;

select max(shipping_limit_date), min(shipping_limit_date) from order_items;

select * from olist.customers;

select customer_state, count(customer_state) from customers 
group by customer_state
order by count(customer_state) desc
limit 1;

select customer_city ,count(customer_city) from customers
where customer_state = "sp"
group by customer_city
order by count(customer_city) desc;


select business_segment, count(business_segment) from closed_deals
where business_segment <> "NULL"
group by business_segment;

select * from olist.closed_deals;
select business_segment, sum(declared_monthly_revenue) from closed_deals
group by business_segment
order by sum(declared_monthly_revenue) desc
limit 3;

select * from olist.order_reviews;
select review_score, count(review_id) from order_reviews
group by review_score;





