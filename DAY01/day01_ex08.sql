SELECT order_date, CONCAT (person.name, ' (age:', person.age, ')') AS person_information FROM 
(SELECT person_id AS id, order_date FROM person_order) AS t1
NATURAL JOIN person
ORDER BY order_date, person_information