option 1:
select city from station where substr(city,1,1) in ('a','e','i','o','u');

option 2:
select city from station where city regexp '^[aeiou]' 

option 3:
select distinct city from station where 
city like 'a%' or
city like 'e%' or
city like 'i%' or
city like 'o%' or
city like 'u%';
