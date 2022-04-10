SELECT name
FROM (SELECT *
FROM v_persons_female
UNION
SELECT *
FROM v_persons_male) t1
ORDER BY 1
