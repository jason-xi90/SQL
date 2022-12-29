alter table customers
add email VARCHAR(100);

update customers
set email ='jason-walker@gmail.com'
where customer_id = 1;

