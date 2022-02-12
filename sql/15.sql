/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */


select c.name, count(f.film_id) as sum 
from category c 
inner join film_category fi on c.category_id = fi.category_id 
inner join film f on f.film_id = fi.film_id 
inner join language l on f.language_id = l.language_id 
where l.name = 'English' 
group by c.name 
order by c.name;
