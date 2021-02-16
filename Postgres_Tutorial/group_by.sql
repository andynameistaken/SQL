-- Without aggregate fn
--  The following query gets data from the payment table and groups the result by customer id.
select
    customer_id
from payment
group by customer_id
order by customer_id;


-- it behaves like DISTINCT without aggregate fn


--- Aggregate fn:
-- For example, to get the amount that a customer has been paid, you use the GROUP BY clause to divide the payment
-- table into groups; for each group, you calculate the total amounts using the SUM() function:
select
    customer_id,
    sum(amount)
from
    payment
group by customer_id
order by customer_id;

-- You can use the ORDER BY clause with GROUP BY clause to sort the groups:
select
    customer_id,
    sum(amount)
from payment
group by
    customer_id
order by
    sum(amount) desc;


-- count
-- total num of payments:
select
    staff_id,
    count(payment_id)
from
    payment
group by
    staff_id;

-- mulitiple columns:
-- . For each group of (customer_id, staff_id), the SUM() calculates the total amount:
select
    customer_id,
    staff_id,
    sum(amount)
from
    payment
group by
    customer_id,
    staff_id
order by
    customer_id;

-- Grouping by dates
select
    date(payment_date),
    sum(amount)
from
    payment
group by
    date(payment_date)
order by
    date(payment_date);

