SELECT name FROM
(SELECT * FROM
(SELECT pizzeria.id
FROM pizzeria
LEFT JOIN person_order
ON pizzeria.id = person_order.menu_id
WHERE person_order.id IS NOT NULL
EXCEPT
SELECT menu.pizzeria_id
FROM person_order
LEFT JOIN person
ON person.id = person_order.person_id AND gender = 'female'
JOIN menu 
ON person_order.menu_id = menu.pizzeria_id
WHERE person.id IS NOT NULL) t1

UNION

SELECT * FROM
(SELECT pizzeria.id
FROM pizzeria
LEFT JOIN person_order
ON pizzeria.id = person_order.menu_id
WHERE person_order.id IS NOT NULL
EXCEPT
SELECT menu.pizzeria_id
FROM person_order
LEFT JOIN person
ON person.id = person_order.person_id AND gender = 'male'
JOIN menu 
ON person_order.menu_id = menu.pizzeria_id
WHERE person.id IS NOT NULL) t2 ) t3

JOIN pizzeria
ON pizzeria.id = t3.id
ORDER BY 1

