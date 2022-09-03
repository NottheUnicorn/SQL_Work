-- we will select all record from the actor table

select * from actor 


-- Query for first_name and last_name in the actor table 
select first_name,last_name
from actor;

--query for a first name that equals nick using where clause

select first_name,last_name
from actor 
where first_name like 'Nick';

--Query for all first_name data that starts with a J using like and where clauses with a wildcard

select first_name, actor_id
from actor 
where first_name like 'J%';

select first_name, actor_id
from actor
where first_name like 'K__';

select first_name, last_name, actor_id
from actor
where first_name like 'K__%th';

-- Comparing Operators > < >= <= <> =not equal --

select * from payment 

select customer_id, amount
from payment 
where amount > 2.00

select customer_id, amount
from payment 
where amount < 7.99

select customer_id, amount
from payment 
where amount <= 7.99

select customer_id, amount
from payment 
where amount > 2.00;

select customer_id, amount
from payment 
where amount <> 0
order by amount desc;

--aggregrate Functions, Sum, avg, count , min, and max--

select sum(amount)
from payment 
where amount > 5.99;

select avg(amount)
from payment 
where amount > 5.99;

select count(amount)
from payment 
where amount > 5.99;

select count (distinct amount)
from payment 
where amount > 5.99;

select min(amount) as min_num_payment
from payment 
where amount > 7.99;

select max(amount) as max_num_payment
from payment 
where amount > 7.99;

select amount
from payment 
where amount = 7.99

select amount, count(amount)
from payment 
group by amount 
order by amount

select customer_id, sum(amount)
from payment 
group by customer_id 
order by sum(amount) desc;


