
--inner join --
select actor.actor_id, first_name, last_name, film_id
from film_actor 
inner join actor 
on actor.actor_id = film_actor.actor_id; 

--left--
select actor.actor_id, first_name, last_name, film_id
from film_actor
left join actor 
on actor.actor_id = film_actor.actor_id;

--full join from country of angola--
select customer.first_name, customer.last_name, customer.email, country
from customer
full join address
on customer.address_id = address.address_id
full join city
on address.city_id = city.city_id 
full join country on
city.country_id = country.country_id 
where country = 'Angola'; 

