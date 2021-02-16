-- FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> DISTINCT -> ORDER BY -> LIMIT
-- The following query uses the GROUP BY clause with the SUM() function to find the total amount of each customer:
select
    customer_id,
    sum(amount)
from payment
where  date(payment_date) = date('2007-02-14')
group by  customer_id
order by customer_id;
