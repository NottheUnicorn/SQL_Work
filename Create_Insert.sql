insert into customer(
	customer_id, 
	first_name,
	last_name,
	address,
	billing_info
) values (
	 1,
	'Joel',
	'Carter',
	'555 Cir Dr. Chicago, Il, 60614',
	'1111-1212-1313-1414'
);

insert into brand(
	seller_id,
	brand_name,
	contact_number,
	address
) values (
	1,
	'Coding Temple LLC',
	'773-555-4490',
	'222 W Ontario St Chicago IL'

);

insert into inventory (
	upc,
	product_amount 
) values (
	1,
	20.00
);

insert into product(
	item_id,
	amount,
	prod_name,
	seller_id,
	upc 
) values (
	1,
	20.00,
	'Python 101',
	1,
	1
);

insert into order_(
	order_id,
	sub_total,
	total_cost,
	upc
) values (
	1,
	40.00,
	43.50,
	1
);

insert into cart(
	cart_id,
	customer_id,
	order_id 
) values (
	1,
	1,
	1
)

select * from customer
