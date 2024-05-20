select *from passenger;
select *from price;
desc passenger;
desc price;

-- 2. 
-- a. How many female passengers traveled a minimum distance of 600 KMs? 

select count(gender) from passenger
where distance =600;

-- b. Write a query to display the passenger details whose travel distance is greater than 500 and
   -- who are traveling in a sleeper bus.
select * from passenger
where distance>500 and Bus_Type='Sleeper';

-- c. Select passenger names whose names start with the character 'S'.
select *from  passenger
where passenger_name like 'S%';


-- d. Calculate the price charged for each passenger, displaying the Passenger name, Boarding City,
   -- Destination City, Bus type, and Price in the output. 

select passenger.Passenger_name, passenger.Distance,passenger.Boarding_City,passenger.Destination_City, passenger.Bus_type,price.price 
from travego.passenger,travego.price
where passenger.Bus_Type=price.Bus_Type and passenger.Distance=price.Distance;

-- e. What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting in
   -- a bus? 
select passenger.Passenger_name, passenger.Distance,passenger.Boarding_City,passenger.Destination_City, passenger.Bus_type,price.price 
from travego.passenger,travego.price
where passenger.Bus_Type=price.Bus_Type and passenger.Distance=price.Distance and passenger.distance=1000 and Bus_Type='Sitting' ;

-- f. What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji?

select @dist := passenger.distance from passenger 
where Boarding_City = 'Panaji' and Destination_City = 'Bengaluru_City';

select Price.price,price.Bus_Type from price
where price.Distance = @dist;

-- g. Alter the column category with the value "Non-AC" where the Bus_Type is sleeper 

update passenger set category = 'Non-AC' where Bus_type='Sleeper';

-- h.Delete an entry from the table where the passengername is Piyush and commit this change in the database

-- By default autocommit is set to 1 in mysql hence the changes will be permanent , and no need to commit. 

delete from passenger where passenger_name = 'Piyush';

-- i. Truncate the table passenger and comment on the number of rows in the table(explain if required)

truncate table passenger;

select * from passenger;

-- Truncate is used to delete all the values(rows/tuples) from the table except the structure i.e fields/Attribute names. 

-- j. Delete the table passenger from the database

drop table passenger;

-- drop is used to delete all the values including the structure of the table. 