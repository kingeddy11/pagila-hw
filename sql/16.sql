/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */


select f.title, sum(p.amount) as profit 
from film f 
inner join inventory i on f.film_id = i.film_id 
inner join rental r on i.inventory_id = r.inventory_id 
inner join payment p on r.rental_id =  p.rental_id 
group by f.title 
order by profit desc;
