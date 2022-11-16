create table customer(
	customer_id SERIAL primary key,
	phone_number VARCHAR(15)
);

create table movie(
	movie_id SERIAL primary key,
	movie_date DATE default CURRENT_DATE,
	movie_time TIME default CURRENT_TIME,
	customer_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id)
);

create table concessions(
	concessions_id SERIAL primary key,
	total_cost NUMERIC(10,2)
);

create table ticket(
	ticket_id SERIAL primary key,
	quantity INTEGER,
	movie_id INTEGER not null, 
	concessions_id INTEGER not null,
	foreign key(movie_id) references movie(movie_id),
	foreign key(concessions_id) references concessions(concessions_id)
);