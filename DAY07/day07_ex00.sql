SELECT p.id person_id, COUNT(*) count_of_visits
FROM person p
INNER JOIN person_visits pv ON pv.person_id = p.id
INNER JOIN pizzeria pz ON pz.id = pv.pizzeria_id
GROUP BY 1
ORDER BY 2 DESC