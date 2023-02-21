/*
 * List last names of actors and the number of actors who have that last name,
 * but only for names that are shared by at least two actors
 */

select 
    last_name, 
    count(*) AS last_name_count 
from actor 
group by last_name HAVING count(*) > 1 
order by last_name_count DESC;
