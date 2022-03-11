-- Adding theaters to our theater
insert into theater (
	theater_id,
	capacity
) values (
	1,
	100
);

insert into theater (
	theater_id,
	capacity
) values (
	2,
	75
);

insert into theater (
	theater_id,
	capacity
) values (
	3,
	150
);

-- Adding Movies to our theater
insert into movies (
	movie_id,
	movie_title,
	movie_rating,
	theater_id
) values (
	1,
	'Dirty Dancing',
	'PG-13',
	1
);

insert into movies (
	movie_id,
	movie_title,
	movie_rating,
	theater_id
) values (
	2,
	'Bodyguard',
	'R',
	2
);

insert into movies (
	movie_id,
	movie_title,
	movie_rating,
	theater_id
) values (
	3,
	'Encanto',
	'PG',
	3
);

-- Adding tickets
insert into tickets (
	ticket_id,
	ticket_type,
	ticket_cost,
	movie_id
) values (
	1,
	'adult',
	18.00,
	2
);

insert into tickets (
	ticket_id,
	ticket_type,
	ticket_cost,
	movie_id
) values (
	2,
	'child',
	10.00,
	3
);

insert into tickets (
	ticket_id,
	ticket_type,
	ticket_cost,
	movie_id
) values (
	3,
	'senior',
	12.00,
	1
);

-- Adding customers
insert into customers (
	customer_id,
	ticket_id
) values (
	1,
	1
);

insert into customers (
	customer_id,
	ticket_id
) values (
	2,
	3
);

insert into customers (
	customer_id,
	ticket_id
) values (
	3,
	2
);

insert into concessions (
	transaction_id,
	item_type,
	item_cost,
	total_cost,
	customer_id
) values (
	1,
	'popcorn',
	8.00,
	8.00,
	1
);

insert into concessions (
	transaction_id,
	item_type,
	item_cost,
	total_cost,
	customer_id
) values (
	2,
	'candy',
	6.00,
	6.00,
	3
);

insert into concessions (
	transaction_id,
	item_type,
	item_cost,
	total_cost,
	customer_id
) values (
	3,
	'popcorn & soda combo',
	12.00,
	12.00,
	2
);

