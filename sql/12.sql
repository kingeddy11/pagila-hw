/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */


select c.customer_id, c.first_name, c.last_name, sum(p.amount) as sum 
from customer c 
inner join payment p on c.customer_id = p.customer_id 
group by c.customer_id, c.first_name, c.last_name 
order by last_name;
