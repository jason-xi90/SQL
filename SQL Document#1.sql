select count(actor_id)
from actor
where last_name = 'Wahlberg';

select count(amount)
from payment 
where amount between 3.99 and 5.99;

select film_id, count(film_id)
from inventory
group by film_id
order by count(film_id) desc;

select count(customer_id)
from customer 
where last_name = 'William';

select staff_id, max(mycount)
from (select staff_id, count(rental_id) as mycount
from rental 
group by staff_id) as myrental
group by staff_id;

select count(distinct(district))
from address;

select film_id, max(actorcount)
from (select film_id, count(actor_id) as actorcount
from film_actor 
group by film_id) as filmactor
group by film_id 
order by max(actorcount) desc;

select count(customer_id)
from customer 
where store_id = 1 and last_name like '%es';

select count(amount)
from payment 
where customer_id between 380 and 430
group by amount
having count(rental_id)>250;

select distinct(rental_rate), count(film_id)
from film 
group by rental_rate 
order by count(film_id) desc;






