/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */


select f.title, f.film_id, count(a.actor_id) as actor_count from film f inner join film_actor a on f.film_id = a.film_id group by f.title, f.film_id order by actor_count, title;
