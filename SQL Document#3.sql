select first_name, last_name
from customer 
left join order_ 
on customer.customer_id = order_.customer_id
where customer_state = 'TX';

select first_name, last_name
from customer 
inner join order_ 
on customer.customer_id = order_.customer_id
where amount > 6.99;

select first_name, last_name
from customer 
where customer_id in (
	select customer_id 
	from payment 
	group by customer_id 
	having sum(amount)>175
	order by sum(amount) desc
);

select first_name, last_name
from customer 
where city in (
	select city
	from city 
	where city = 'Nepal'
);

select staff_id
from staff
where staff_id in (
	select staff_id 
	from payment 
	group by staff_id 
	order by sum(amount) desc
);

select count(film_id)
from film
where rating in (
	select distinct(rating)
	from film
);

select first_name, last_name
from customer 
where customer_id in (
	select customer_id 
	from payment 
	where amount > 6.99
);

select count(rental_id)
from rental 
where rental_id in (
	select rental_id
	from payment 
	where amount = 0
);
