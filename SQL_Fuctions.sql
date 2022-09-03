select * from payment;

--Stored Procedure to imitate a late fee charge --

create or replace procedure latefee(
	customer INTEGER,
	lateFeeAmount DECIMAL

)
language plpgsql
as $$
begin 
	-- Add late fee to custome payment amount --
	update payment
	set amount = amount + lateFeeAmount
	where customer_id = customer;

	-- Commit the above statement inside of a transaction --
	commit;
end;
$$

-- Calling a stored procedure --
call lateFee(341, 2.00)

--Check that the late fee has been posted --

select * from payment where customer_id = 341;

-- to delete the procedure:
drop procedure latefee;

--Stored fuctions
--Make a stored function to insert data into the actor table

create or replace function add_actor(_actor_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _last_update TIMESTAMP without TIME zone)
returns void
as $MAIN$
begin
		insert into actor(actor_id,first_name,last_name,last_update)
		values (_actor_id,_first_name,_last_name,_last_update);
end
$MAIN$
language plpgsql;
end

--Good Call of Function--

select add_actor(1500, 'Kevin', 'Hart', NOW()::timestamp);

-- Verify addition

select * from actor where actor_id = 1500;

-- delete/drop the stored function
drop function add_actor;


