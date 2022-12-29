create table Customers (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(100),
	billing_info VARCHAR(100)
);

create table Concessions (
	order_id SERIAL primary key,
	order_date DATE,
	total_cost NUMERIC(8,2),
	customer_id INTEGER not null,
	foreign key(customer_id) references Customers(customer_id)
);

create table Tickets (
	ticket_id SERIAL primary key,
	customer_id INTEGER not null,
	order_id INTEGER not null,
	foreign key(customer_id) references Customers(customer_id),
	foreign key(order_id) references Concessions(order_id)
);

create table Movies (
	movie_id SERIAL primary key,
	movie_name VARCHAR(100),
	auditorium_number NUMERIC(2,0),
	customer_id INTEGER not null,
	foreign key(customer_id) references Customers(customer_id)
);
