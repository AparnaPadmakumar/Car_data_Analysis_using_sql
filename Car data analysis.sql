create schema cars;
select * from cars.car_data;
use cars;
-- READ DATA --
select * from car_data;
-- Total Cars: To get a count of total records--
select count(*) as total_count from car_data;

-- The manager asked the employee how many cars will be available in 2023
select count(*) from car_data where year= 2023;

-- The manager asked the employee how many cars will be available in 2020, 2021, 2022
select count(*) from car_data where year= 2020; #74
select count(*) from car_data where year= 2021; #7
select count(*) from car_data where year= 2022; #7
-- GROUP BY --
select year, count(*) from car_data where year in (2020,2021,2022) group by year;

-- Client asked to print the total of all cars by year
select year, count(*) from car_data group by year;

-- Client asked to car dealer agent How many diesel cars will there be in 2020
select fuel, count(*) as diesel_cars from car_data where year=2020 and fuel= 'Diesel'; #20

-- Client asked to car dealer agent How many petrol cars will there be in 2020
select fuel, count(*) as diesel_cars from car_data where year=2020 and fuel= 'Petrol'; #51

-- The manager told the employee to give a print ALL the fuel cars( petrol, diesel, CNG) come by all year
select year, count(*) as petrol_car from car_data where fuel ='Petrol' group by year;
select year, count(*) as diesel_car from car_data where fuel ='Diesel' group by year;
select year, count(*) as cng_car from car_data where fuel ='CNG' group by year;

-- which year has more than 100 cars
select year,count(Name) as total_car from car_data group by year having total_car > 100;

-- which year has less than 50 cars
select year,count(Name) as total_car from car_data group by year having total_car < 50;

-- Manager needs a complete count of all cars between 2015 and 2023
select count(*) from car_data where year between 2015 and 2023;

-- Manager needs a complete list of all details of cars between 2015 and 2023
select * from car_data where year between 2015 and 2023;
