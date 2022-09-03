-- we will select all record from the actor table

select * from actor 


-- Query for first_name and last_name in the actor table 
select first_name,last_name
from actor;

--query for a first name that equals nick using where clause

select last_name
from actor 
where last_name like 'Wahlberg';

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
where amount > 3.99 and amount < 5.99

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

select first_name
from customer 
where first_name like 'William';

select min(amount) as min_num_payment
from payment 
where amount > 7.99;

select film_id
from inventory 


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

select staff_id 
from staff

select *
from country

select max(film_id)
from film_actor


