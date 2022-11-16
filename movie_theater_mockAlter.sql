-- The statememts we use to change the database tables are:
-- ALTER, UPDATE/SET, DELETE/WHERE, ADD(used with an ALTER statememt), drop 

select movie_date from movie

-- Update movie_date
update movie 
set movie_date = '2021-04-07'
where movie_date = '2021-04-06' AND customer_id = 1

-- DELETE statment for cool where the glasses are black
create table cool (
	glasses VARCHAR(15)
);

insert into cool (
	glasses
) values (
	'black'
);

delete from cool 
where glasses = 'black';

select * from cool

alter table customer 
add email VARCHAR(150);

update customer 
set email = 'joelc@codingtemple.com'
where customer_id = 1;

-- DROP statement for remvoing a table from the database
create table fun (
	phone_number VARCHAR(15)
);

drop table fun cascade;

select * from fun

