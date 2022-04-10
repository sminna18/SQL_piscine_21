SELECT DISTINCT p.name FROM person p
INNER JOIN person_order po ON po.person_id = p.id
ORDER BY name