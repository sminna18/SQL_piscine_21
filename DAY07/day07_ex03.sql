WITH visits_and_ordersCTE AS (
	(
		SELECT pz.name, COUNT(*) count, 'order' action_type
		FROM pizzeria pz
		INNER JOIN menu m ON m.pizzeria_id = pz.id
		INNER JOIN person_order po ON po.menu_id = m.id
		GROUP BY 1
		ORDER BY count DESC
		LIMIT 3)
	UNION (
		SELECT pz.name, COUNT(*) count, 'visit' action_type
		FROM pizzeria pz
		INNER JOIN person_visits pv ON pv.pizzeria_id = pz.id
		GROUP BY 1
		ORDER BY count DESC
		LIMIT 3)
	ORDER BY action_type, count DESC)

SELECT name, sum(count) total_count FROM visits_and_ordersCTE
GROUP BY name
ORDER BY 2 DESC