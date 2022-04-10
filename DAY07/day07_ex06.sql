SELECT pz.name, COUNT(*) count_of_orders, round(AVG(m.price), 2) average_price,
	MAX(m.price) max_price, MIN(m.price) min_price
FROM pizzeria pz
INNER JOIN menu m ON m.pizzeria_id = pz.id
INNER JOIN person_order po ON po.menu_id = m.id
GROUP BY 1
ORDER BY name