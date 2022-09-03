--SubQueries

--Two Queries split apart

-- Find a customer id that has an amount greater than 175 in total payments

select customer_id
from payment
group by customer_id 
having sum(amount) > 175
order by sum(amount) desc


--another query--

select store_id, first_name,last_name
from customer
where customer_id in (
	select customer_id 
	from payment
	group by customer_id 
	having sum(amount) > 175
	order by sum(amount) desc
)
group by store_id, first_name, last_name ;

--Basic subquery--

select *
from customer 
where customer_id in (
	select customer_id 
	from payment
	group by customer_id 
	having sum(amount) > 175
	order by sum(amount) desc
);

-- Another subquery where all films are in english -- 

select *
from film
where language_id in (
	select language_id
	from language 
	where language_id = 1
)
	
	
select * from language
