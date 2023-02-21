/*
 * Use a JOIN to display the first and last names, as well as the address, of each staff member.
 * Use the tables staff and address.
 * Order by last name.
 */

SELECT s.first_name, s.last_name, a.address AS street_address
FROM staff s
INNER JOIN address a ON s.address_id = a.address_id
WHERE s.first_name IS NOT NULL AND s.last_name IS NOT NULL
ORDER BY last_name;

