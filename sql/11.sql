/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */


select f.film_id, f.title, count(i.inventory_id) as count 
from film f 
inner join inventory i on f.film_id = i.film_id 
group by f.film_id, f.title 
having f.title like 'H%' 
order by title desc;
