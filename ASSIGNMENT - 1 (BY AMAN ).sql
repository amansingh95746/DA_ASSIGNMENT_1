--- Assignment SQL Commands -----

----  Q1 identify the primary keys and foreign keys in maven movies db. discuss the differences ----

select * from information_schema.key_column_usage where table_schema='mavenmovies';

--- PRIMARY KEY  is a unique and in one table only one primary key.Eg table name student
-- in a table we have student_id , student_name , student_email. student_id is a primary key in table student ---

--- FOREIGN KEY is use to build relationship between two table ---

--- Q2 list all details of actors ---

select*from actor;

--- Q3 list all customer information from DB.---
 
 select *from customer;
 
--- Q4 list different countries.---

select *from country;

--- Q5 Display all active customers ---

select active from customer where active =1;

--- Q6 list of all rental IDs from customer with ID 1. ---

select rental_id from rental where customer_id =1;

--- Q7 Display all the films whose rental duration is greater than 5. ---

select title as film from film where rental_duration >5;

--- Q8 list the total number of films whose replacement cost is greater than $15 and less than $20. ---- 

select count(*) as total_no_of_film from film where replacement_cost >15 and replacement_cost <20;

---- Q9 Display the count of unique first names of actor -----  

select count(distinct(first_name)) as first_name_count from actor;

---- Q10 Display the first 10 records from the customer table. ----

select * from customer limit 10;

--- Q11 Display the first 3 records from the customer table whose first name starts with 'b' ----

select first_name from customer where first_name like 'b%' limit 3;

--- Q12 Display the names of the first 5 movies which are rated as 'G' ----

select title as movies from film where rating='G' limit 5;

--- Q13 Find all customers whose first name start with "a". ----

select first_name from customer where first_name like 'a%';

---- Q14 Find all customers whose first name ends with "a". ---

select first_name from customer where first_name like '%a';

---- Q15 Display the list of first 4 cities which start and end with 'a' ----

select city from city where city like 'a%a' limit 4;

---- Q16 Find all customers whose first name have "NI" in any position. ---

select first_name from customer where first_name like'%NI%';

---- Q17 Find all customers whose first name have 'r' in second position. ----

select first_name from customer where first_name like '_r%';

---- Q18 Find all customer whose first name starts with "a" and are at least 5 characters in length. ----

select first_name from customer where first_name like'a%' and length(first_name)>=5;

---- Q19 Find all customers whose first name starts with 'a' and ends with 'o' ----

select first_name from customer where first_name like 'a%o'; 

---- Q20 Get the films with Pg and Pg - 13 rating using IN operator. -----

select title,rating from film where rating in('pg','pg-13');

---- Q21 Get the film with length between 50 to 100 using between operator. ---

select title,length from film where length between 50 and 100;

---- Q22 Get the top 50 actors using limit operator. ----

select * from actor limit 50;

--- Q23 Get the distinct film ids from inventory table.----

select distinct film_id from inventory;





 






