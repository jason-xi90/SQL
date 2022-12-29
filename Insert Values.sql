insert into Customers (
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) values (
	1,
	'Jason',
	'Walker',
	'123 Washington St',
	'12-12-12'
);

insert into Tickets (
	ticket_id,
	customer_id,
	order_id
) values (
	1,
	1,
	1
);

insert into Concessions (
	order_id,
	order_date,
	total_cost,
	customer_id
) values (
	1,
	'1/1/2022',
	10,
	1
);

insert into Movies (
	movie_id,
	movie_name,
	auditorium_number,
	customer_id
) values (
	1,
	'Jason Walker',
	1,
	1
);