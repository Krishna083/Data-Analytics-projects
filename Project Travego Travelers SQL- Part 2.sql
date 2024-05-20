-- 1 How many females and how many male passengers traveled a minimum distance of 600 KMs
select gender from travego.passenger where Distance >= 600; -- 4 Males & 2 Females

-- 2 Find the minimum ticket price of a Sleeper Bus
select min(Price) from travego.price where Bus_type = "Sleeper"; -- 770 Price

-- 3 Select passenger names whose names start with character 'S' 
select Passenger_name from travego.passenger where Passenger_name like "S%"; -- Sejal


-- 4 Calculate price charged for each passenger displaying Passenger name, Boarding City, Destination City, Bus_Type, Price in the output
select a.Passenger_name, a.Boarding_city, a.Destination_city, a.Bus_type, b.Price 
from travego.passenger a, travego.price b
where a.Distance = b.Distance and a.Bus_type = b.Bus_type;

-- 5 What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting in a bus
select a.Passenger_name, a.Bus_type, a.Distance, b.Price 
from travego.passenger a, travego.price b
where a.Bus_type = b.Bus_type and a.Distance = b.Distance and a.Distance >= 1000 and a.Bus_type = "Sitting"; 

-- 6 What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji
select pa.passenger_name, pr.Bus_type, pr.price from travego.passenger as pa join travego.price as pr using(distance)
where Passenger_name = "Pallavi";

-- 7 List the distances from the "Passenger" table which are unique (non-repeated distances) in descending order
select distinct Distance from travego.passenger order by Distance  desc;

-- 8 Display the passenger name and percentage of distance traveled by that passenger from the total distance traveled by all passengers without using user variables 
select Passenger_name,Distance,(Distance/(select sum(Distance) from travego.passenger)*100) as Percentage_Distance
from travego.passenger;


