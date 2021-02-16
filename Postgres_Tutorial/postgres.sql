---------- SELECT ---------

---- Order of evaluation ----
-- FROM -> SELECT

-- Examples:
-- This example uses the SELECT statement to find the first names of all customers from the customer table:
select first_name
from customer;

-- Suppose you just want to know the first name, last name and
-- email of customers, you can specify these column names in the SELECT clause as shown in the following query:
select first_name,
       last_name,
       email
from customer;


-- Concatenation || :
select first_name || ' ' || last_name,
       email
from customer;



---- ALIAS ----
-- SELECT column_name AS alias_name
-- FROM table_name;
select
    first_name || ' ' || last_name AS full_name
from
    customer;

-- alias with spaces:
select
    first_name || ' ' || last_name as "full name"
from
    customer;

---- ORDER BY ----
-- Order:
-- FROM -> SELECT -> ORDER BY
SELECT
	first_name,
	last_name
FROM
	customer
ORDER BY
	first_name ASC,
	last_name DESC;
-- it will sort by first name first and if those are equal it will take last name from descending order

-- ORDER BY + Expression
select first_name,
       length(first_name) as len
from customer
order by len desc;

-- ORDER BY + NULL
create table sort_demo (num INT);
insert into sort_demo
(num)
VALUES
(1), (2), (3), (null);

select num
from sort_demo
order by num;

-- this is equals to:
SELECT num
FROM sort_demo
ORDER BY num NULLS LAST ;

-- NULLS FIRST:
SELECT num
FROM sort_demo
ORDER BY num NULLS FIRST;


SELECT num
FROM sort_demo
ORDER BY num DESC ;
-- is equal to:
SELECT num
FROM sort_demo
ORDER BY sort_demo DESC NULLS FIRST ;

-- lets reverse it
SELECT num
FROM sort_demo
ORDER BY num NULLS LAST;




---- DISTINCT
CREATE TABLE distinct_demo (
	id serial NOT NULL PRIMARY KEY,
	bcolor VARCHAR,
	fcolor VARCHAR
);

INSERT INTO distinct_demo (bcolor, fcolor)
VALUES
	('red', 'red'),
	('red', 'red'),
	('red', NULL),
	(NULL, 'red'),
	('red', 'green'),
	('red', 'blue'),
	('green', 'red'),
	('green', 'blue'),
	('green', 'green'),
	('blue', 'red'),
	('blue', 'green'),
	('blue', 'blue');

select id,
       bcolor,
       fcolor
from distinct_demo;

select  distinct bcolor
from distinct_demo
order by bcolor;

select distinct bcolor,
                fcolor
from distinct_demo
order by bcolor,
         fcolor;

-- DISTINCT ON ONE ROW
SELECT
	DISTINCT ON (bcolor) bcolor,
	fcolor
FROM
	distinct_demo
ORDER BY
	bcolor,
	fcolor;



---- WHERE-----
-- FROM -> WHERE -> SELECT -> ORDER BY

SELECT last_name,
       first_name
FROM customer
WHERE first_name = 'Jamie';

SELECT last_name,
       first_name
FROM customer
WHERE first_name = 'Jamie' AND
      last_name = 'Rice';


SELECT last_name,
       first_name
FROM customer
WHERE first_name in ('Ann', 'Anne', 'Annie')
ORDER BY last_name;

-- The following example finds customers whose first names
-- start with the letter A and contains 3 to 5 characters by using the BETWEEN operator.
SELECT first_name,
       length(first_name) as len
FROM customer
WHERE first_name like 'A%' AND length(first_name) between 3 and 5
ORDER BY len;
-------FETCH
-- The following query use the FETCH clause to select the first film sorted by titles in ascending order:
SELECT film_id,
       title
FROM film
ORDER BY title
OFFSET 1
FETCH FIRST 1 ROW ONLY;

---- IN
-- Suppose you want to know the rental information
-- of customer id 1 and 2, you can use the IN operator in the WHERE clause as follows:

select customer_id,
       rental_date,
       return_date
from rental
where customer_id in(1,2);

-- not in
select customer_id,
       rental_date,
       return_date
from rental
where customer_id not in (1,2);

-- IN Subquery:
select customer_id,
       first_name,
       last_name
from customer
where customer_id in (
    select customer_id
    from rental
    where cast(return_date as date) = '2005-05-27'
    )
order by customer_id;


--- BETWEEN
--  value BETWEEN low AND high
--  equals:
--  value >= low and value <= high

-- value NOT BETWEEN low AND high;
-- equals:
-- value < low OR value > high

select payment_id,
       customer_id,
       amount
from payment
where amount between 5 and 8.99;

select customer_id,
       payment_id,
       amount,
       payment_date
from payment
where payment_date between '2007-02-07' and '2007-02-15';


-- like

select first_name
from customer
where first_name ~~ 'A%'; -- LIKE

select first_name
from customer
where first_name ~~* 'a%' -- ILIKE

select first_name
from customer
where first_name !~~ 'A%'; -- NOT LIKE

select first_name
from customer
where first_name !~~* 'a%'; -- NOT ILIKE

create table tmp (
    id BIGSERIAL,
    num INT,
    num_2 INTEGER,
    txt text,
    vchar varchar(10)

);

insert into tmp (num) values (1);
select * from tmp;

select * from sort_demo
where num is null;


CREATE TABLE basket_a (
    a INT PRIMARY KEY,
    fruit_a VARCHAR (100) NOT NULL
);

CREATE TABLE basket_b (
    b INT PRIMARY KEY,
    fruit_b VARCHAR (100) NOT NULL
);

INSERT INTO basket_a (a, fruit_a)
VALUES
    (1, 'Apple'),
    (2, 'Orange'),
    (3, 'Banana'),
    (4, 'Cucumber');

INSERT INTO basket_b (b, fruit_b)
VALUES
    (1, 'Orange'),
    (2, 'Apple'),
    (3, 'Watermelon'),
    (4, 'Pear');


-- INNER JOIN

select a,
       fruit_a,
       b,
       fruit_a
from basket_a
inner join basket_b
on fruit_a = fruit_b;

 select a,
        fruit_a,
        b,
        fruit_b
from basket_a
left join basket_b
on fruit_a = fruit_b;


select a,
       fruit_a,
       b,
       fruit_b
from basket_a
left join basket_b
on fruit_a = fruit_b
where fruit_b is null;


-- left join
select a,
       fruit_a,
       b,
       fruit_b
from basket_a
right join basket_b
on fruit_a = fruit_b;

select a,
       fruit_a,
       b,
       fruit_b
from basket_a
right join basket_b
on fruit_a = fruit_b
where fruit_a is null;


select a,
       fruit_a,
       b,
       fruit_b
from basket_a
full outer join basket_b
    on fruit_a = fruit_b;



select a,
       fruit_a,
       b,
       fruit_b
from basket_a
full outer join basket_b
on fruit_a = fruit_b
where
      fruit_a is null
   or
      fruit_b is null;



--- INNER JOIN
select c.first_name,
       c.last_name,
       c.customer_id,
       p.amount,
       p.payment_date
from customer c
inner join payment p
on p.customer_id = c.customer_id;


select
    c.customer_id,
	c.first_name customer_first_name,
	c.last_name customer_last_name,
	s.first_name staff_first_name,
	s.last_name staff_last_name,
	amount,
	payment_date
from customer c
inner join payment p
    on c.customer_id = p.customer_id
inner join staff s
    on p.staff_id = s.staff_id;

select film.film_id,
       title,
       inventory_id
from film
left join inventory on
    inventory.film_id = film.film_id
order by title;


CREATE TABLE employee
(
    employee_id INT PRIMARY KEY,
    first_name  VARCHAR(255) NOT NULL,
    last_name   VARCHAR(255) NOT NULL,
    manager_id  INT,
    FOREIGN KEY (manager_id)
        REFERENCES employee (employee_id)
        ON DELETE CASCADE
);

INSERT INTO employee (
	employee_id,
	first_name,
	last_name,
	manager_id
)
VALUES
	(1, 'Windy', 'Hays', NULL),
	(2, 'Ava', 'Christensen', 1),
	(3, 'Hassan', 'Conner', 1),
	(4, 'Anna', 'Reeves', 2),
	(5, 'Sau', 'Norman', 2),
	(6, 'Kelsie', 'Hays', 3),
	(7, 'Tory', 'Goff', 3),
	(8, 'Salley', 'Lester', 3);


-- self join
select
    e.first_name ||' '|| e.last_name as "employee",
    m.first_name ||' '|| m.last_name as "manager"
from employee e
inner join employee m on
m.employee_id = e.manager_id;


select
    f1.title,
    f2.title,
    f1.length
from
    film as f1
inner join film as f2
on f1.film_id <> f2.film_id and
   f1.length = f2.length;

select
    customer_id
from
    customer
group by
    customer_id
ORDER BY
    customer_id
limit 10

