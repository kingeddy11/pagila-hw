/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */


select film.title 
from film 
inner join film_category on film.film_id = film_category.film_id 
inner  join category on film_category.category_id = category.category_id 
where category.name = 'Family' 
order by film.title;
