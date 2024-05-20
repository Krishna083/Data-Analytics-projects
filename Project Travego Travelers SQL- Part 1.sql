-- Travego Travelers 

-- Creating a database
create database Travego;
use Travego;
-- create the two tables
create table Travego.passenger
(
Passenger_id int primary key,
Passenger_name varchar(20),
Category varchar(20),
Gender varchar(20),
Boarding_city varchar(20),
Destination_city varchar(20),
Distance int,
Bus_type varchar(20)
);
create table Travego.price
(
id int primary key,
Bus_type varchar(20),
Distance int,
Price int
);
-- Inserting values in the tables
insert into travego.price
values(
       1,
       'Sleeper',
       350,
       770
       );
       
insert into price 
values(
       2,
       'Sleeper',
       500,
       1100
       );
       
insert into price 
values(
       3,
       'Sleeper',
       600,
       1320
       );
       
insert into price 
values(
       4,
       'Sleeper',
       700,
       1540
       );
       
insert into price 
values(
       5,
       'Sleeper',
       1000,
       2200
       );
       
insert into price 
values(
       6,
       'Sleeper',
       1200,
       2640
       );
       
insert into price 
values(
       7,
       'Sleeper',
       1500,
       2700
       );
       
insert into price 
values(
       8,
       'Sitting',
       500,
       620
       );

insert into price 
values(
       9,
       'Sitting',
       600,
       744
       );
       
insert into price 
values(
       10,
       'Sitting',
       700,
       868
       );
       
insert into price 
values(
       11,
       'Sitting',
       1000,
       1240
       );
       
insert into price 
values(
       12,
       'Sitting',
       1200,
       1488
       );
       
insert into price 
values(
       13,
       'Sitting',
       1500,
       1860
       );
-- Checking the data in the table price 
select * from travego.price; 
insert into travego.passenger 
values(
	   1,
       'Sejal',
       'AC',
       'Female',
       'Bengaluru',
       'Chennai',
       350,
       'Sleeper'
);

insert into passenger 
values(
	   2,
       'Anmol',
       'Non-AC',
       'Male',
       'Mumbai',
       'Hydderabad',
       700,
       'Sitting'
);

insert into passenger 
values(
	   3,
       'Pallavi',
       'AC',
       'Female',
       'Panaji',
       'Bengaluru',
       600,
       'Sleeper'
);

insert into passenger 
values(
	   4,
       'khusboo',
       'AC',
       'Female',
       'Chennai',
       'Mumbai',
       1500,
       'Sleeper'
);
insert into passenger 
values(
	   5,
       'Udit',
       'Non-AC',
       'Male',
       'Trivandrum',
       'Panaji',
       1000,
       'Sleeper'
);
     
insert into passenger 
values(
	   6,
       'Ankur',
       'AC',
       'Male',
       'Nagpur',
       'Hyderabad',
       500,
       'Sitting'
);

insert into passenger 
values(
	   7,
       'Hemant',
       'Non-AC',
       'Male',
       'Panaji',
       'Mumbai',
       700,
       'Sleeper'
);

insert into passenger 
values(
	   8,
       'Manish',
       'Non-AC',
       'Male',
       'Hyderabad',
       'Bengaluru',
       500,
       'Sitting'
);

insert into passenger 
values(
	   9,
       'Piyush',
       'AC',
       'Male',
       'Pune',
       'Nagpur',
       700,
       'Sitting'
);
-- checking the data in the table passenger 
select * from travego.passenger;