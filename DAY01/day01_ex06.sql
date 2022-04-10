SELECT data_of, name FROM
(SELECT order_date AS data_of, person_id FROM person_order
INTERSECT
SELECT visit_date AS data_of, person_id FROM person_visits) t2
JOIN person
ON person_id = person.id

ORDER BY data_of, name DESC
