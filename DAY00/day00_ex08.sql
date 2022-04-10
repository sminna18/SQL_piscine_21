SELECT *
FROM person_order
WHERE (id % 2 = 1)
ORDER BY id;