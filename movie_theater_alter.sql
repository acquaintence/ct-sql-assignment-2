-- Update total_cost of crunch bites 
update product 
set total_cost = 5.00
where upc = 2;

select * from product 


-- Altering customer table to add email 
alter table customer
add email VARCHAR(150);

update customer
set email = 'beyonce@singleladies.org'
where customer_id = 1;

select * from customer 