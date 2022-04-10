SELECT coalesce(t2.name,'-') AS person_name, t2.visit_date, coalesce(pizzeria.name,'-') AS pizzeria_name
FROM pizzeria
FULL JOIN
(SELECT * FROM person
LEFT JOIN (SELECT * FROM person_visits
WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') t1
ON t1.person_id = person.id) t2
ON t2.pizzeria_id = pizzeria.id
ORDER BY 1,2,3




