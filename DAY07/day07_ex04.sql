SELECT p.name, COUNT (pz.name) count_of_visits FROM person p
INNER JOIN person_visits pv ON pv.person_id = p.id
INNER JOIN pizzeria pz ON pz.id = pv.pizzeria_id
GROUP BY 1
HAVING COUNT(*) > 3