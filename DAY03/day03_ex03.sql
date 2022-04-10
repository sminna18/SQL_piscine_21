SELECT pizzeria.name
FROM pizzeria
LEFT JOIN person_visits
ON pizzeria.id = person_visits.pizzeria_id
WHERE person_visits.id IS NOT NULL
EXCEPT
SELECT pizzeria.name
FROM person_visits
LEFT JOIN person
ON person.id = person_visits.person_id AND gender = 'female'
JOIN pizzeria 
ON person_visits.pizzeria_id = pizzeria.id
WHERE person.id IS NOT NULL
EXCEPT
SELECT pizzeria.name
FROM person_visits
LEFT JOIN person
ON person.id = person_visits.person_id AND gender = 'male'
JOIN pizzeria 
ON person_visits.pizzeria_id = pizzeria.id
WHERE person.id IS NOT NULL


