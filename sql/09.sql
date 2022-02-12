/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */


select s.first_name, s.last_name, sum(p.amount) as sum 
from staff s 
inner join payment p on s.staff_id = p.staff_id 
where p.payment_date >='2020-01-01' AND p.payment_date <'2020-02-01' 
group by s.first_name, s.last_name;
