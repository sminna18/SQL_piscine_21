SELECT t1.pizza_name, pizzeria.name AS pizzeria_name_1, t3.name AS pizzeria_name_2
FROM (SELECT * FROM menu) t1
LEFT JOIN menu
ON t1.price = menu.price AND t1.pizza_name = menu.pizza_name AND t1.pizzeria_id <> menu.pizzeria_id
LEFT JOIN pizzeria
ON menu.pizzeria_id = pizzeria.id
LEFT JOIN pizzeria AS t3
ON t1.pizzeria_id = t3.id

WHERE menu.id IS NOT NULL
ORDER BY 1, 2