insert into customer(
	customer_id,
	phone_number
) values (
	1,
	'773-545-7961'
);

select * from customer

insert into movie(
	movie_id,
	customer_id
) values (
	1,
	1
);

select * from movie

insert into concessions(
	concessions_id,
	total_cost
) values (
	1,
	21.56
);

select * from concessions

insert into ticket(
	ticket_id,
	quantity,
	movie_id,
	concessions_id
) values (
	1,
	3,
	1,
	1
);

select * from ticket