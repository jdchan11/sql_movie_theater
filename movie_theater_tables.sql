create table theater (
	theater_id SERIAL primary key,
	capacity INTEGER
);

create table movies (
	movie_id SERIAL primary key,
	movie_title VARCHAR(100),
	movie_rating VARCHAR(10),
	theater_id INTEGER not null,
	foreign key (theater_id) references theater(theater_id)
);

create table tickets (
	ticket_id SERIAL primary key,
	ticket_type VARCHAR(10),
	ticket_cost NUMERIC(2,2),
	movie_id INTEGER not null,
	foreign key (movie_id) references movies(movie_id)
);

create table customers (
	customer_id SERIAL primary key,
	ticket_id INTEGER not null,
	foreign key (ticket_id) references tickets(ticket_id)
);

create table concessions (
	transaction_id SERIAL primary key,
	item_type VARCHAR(50),
	item_cost NUMERIC(3,2),
	total_cost NUMERIC(4,2),
	customer_id INTEGER not null,
	foreign key (customer_id) references customers(customer_id)
);


-- Alter table column types because I used the numeric field incorrectly above.
alter table tickets
alter column ticket_cost type NUMERIC(4,2);

alter table concessions 
alter column item_cost type NUMERIC(5,2),
alter column total_cost type NUMERIC(6,2);
