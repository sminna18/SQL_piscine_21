INSERT INTO person_discounts
SELECT ROW_NUMBER() OVER () id, p.id person_id, pz.id pizzeria_id,
    CASE
    WHEN COUNT(*) = 1 THEN 10.5
    WHEN COUNT(*) = 2 THEN 22
    ELSE 30
    END discount
FROM person_order po
JOIN person p ON p.id = po.person_id
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria pz ON pz.id = m.pizzeria_id
GROUP BY 2, 3;
