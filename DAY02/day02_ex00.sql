SELECT name
FROM pizzeria LEFT JOIN person_visits
ON pizzeria.id = person_visits.pizzeria_id
WHERE person_id IS NULL