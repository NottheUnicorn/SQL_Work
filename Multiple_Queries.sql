select *
from payment 
where customer_id > 380 and customer_id < 430 
group by payment_id
having amount = sum(4.99) or sum(amount) = 5.99 
order by customer_id desc
