SELECT p.address, pz.name, COUNT(*) count_of_orders
FROM person p
INNER JOIN person_visits pv ON pv.person_id = p.id
INNER JOIN pizzeria pz ON pz.id = pv.pizzeria_id
GROUP BY 1, 2
ORDER BY 1, 2