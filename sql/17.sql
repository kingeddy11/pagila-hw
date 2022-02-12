/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */


select co.country, sum(p.amount) as profit 
from country co 
inner join city ci on co.country_id = ci.country_id 
inner join address a on ci.city_id = a.city_id 
inner join customer cu on a.address_id = cu.address_id 
inner join rental r on cu.customer_id = r.customer_id 
inner join payment p on r.rental_id = p.rental_id 
group by co.country 
order by co.country;
