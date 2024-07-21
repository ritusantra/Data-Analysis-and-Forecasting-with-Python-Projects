-- 1.
select distinct p.product_name, e.base_price
from fact_events e
inner join dim_products p
on e.product_code = p.product_code
where promo_type = 'BOGOF'
and base_price > 500;

-- 2.

select s.city, count(distinct e.store_id) as no_of_stores
 from fact_events e
inner join dim_stores s
on e.store_id = s.store_id
group by s.city;

-- 3.

with events_summary1 as (
select event_id, campaign_id, product_code, base_price, promo_type, 
`quantity_sold(before_promo)`, `quantity_sold(after_promo)`,
base_price * `quantity_sold(before_promo)` as total_rev_before_promo,
case when promo_type = 'BOGOF' then 2*`quantity_sold(after_promo)` 
else `quantity_sold(after_promo)` end as total_qty_after_promo
from fact_events),
events_summary2 as 
(select *, 
case when promo_type = '50% OFF' then base_price*total_qty_after_promo*0.50
when promo_type = '25% OFF' then base_price*total_qty_after_promo*0.25
when promo_type = 'BOGOF' then base_price*total_qty_after_promo*0.50
when promo_type = '33% OFF' then base_price*total_qty_after_promo*0.33
when promo_type = '500 Cashback' then 500*total_qty_after_promo
end as discount from events_summary1)
select 
c.campaign_name,
sum(e.total_rev_before_promo) as total_rev_before_promo,
sum((e.base_price * e.total_qty_after_promo) - e.discount) as total_rev_after_promo
 from events_summary2 e
 inner join dim_campaigns c
 on e.campaign_id = c.campaign_id
 group by c.campaign_name;

-- 4.

with qty as (
select event_id,campaign_id, product_code, base_price, promo_type, 
`quantity_sold(before_promo)`,
case when promo_type = 'BOGOF' then 2*`quantity_sold(after_promo)` else `quantity_sold(after_promo)` end as total_qty_after_promo
from fact_events where campaign_id = 'CAMP_DIW_01')
select 
p.category, 
sum(`quantity_sold(before_promo)`) as qty_before,
sum(total_qty_after_promo) as qty_after,
round(100*(sum(total_qty_after_promo) - sum(`quantity_sold(before_promo)`))/sum(`quantity_sold(before_promo)`),2) as ISU,
rank() over(order by round(100*(sum(total_qty_after_promo) - sum(`quantity_sold(before_promo)`))/sum(`quantity_sold(before_promo)`),2) desc) as rnk
from qty i 
inner join dim_products p 
on i.product_code = p.product_code
group by p.category;

-- 5.

with events_summary1 as (
select event_id, campaign_id, product_code, base_price, promo_type, 
`quantity_sold(before_promo)`, `quantity_sold(after_promo)`,
base_price * `quantity_sold(before_promo)` as total_rev_before_promo,
case when promo_type = 'BOGOF' then 2*`quantity_sold(after_promo)` 
else `quantity_sold(after_promo)` end as total_qty_after_promo
from fact_events),
events_summary2 as 
(select *, 
case when promo_type = '50% OFF' then base_price*total_qty_after_promo*0.50
when promo_type = '25% OFF' then base_price*total_qty_after_promo*0.25
when promo_type = 'BOGOF' then base_price*total_qty_after_promo*0.50
when promo_type = '33% OFF' then base_price*total_qty_after_promo*0.33
when promo_type = '500 Cashback' then 500*total_qty_after_promo
end as discount from events_summary1)
select 
p.product_name, p.category,
Sum(e.total_rev_before_promo) as total_rev_before_promo
, sum((e.base_price*e.total_qty_after_promo) - discount) as total_rev_after_promo,
sum((e.base_price*e.total_qty_after_promo) - discount) - Sum(e.total_rev_before_promo) as IR,
100*(sum((e.base_price*e.total_qty_after_promo) - discount) - Sum(e.total_rev_before_promo))/Sum(e.total_rev_before_promo) as `IR%`
from events_summary2 e
inner join dim_products p
on e.product_code = p.product_code
group by p.product_name, p.category
order by total_rev_after_promo desc;








