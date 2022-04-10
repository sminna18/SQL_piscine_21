SELECT g1 AS missing_date
FROM (SELECT g1::date FROM generate_series('2022-01-01', '2022-01-10', '1 day'::interval) AS g1 ) t1  LEFT JOIN
(SELECT * FROM person_visits WHERE person_id = 1 OR person_id = 2) t2
ON g1 = visit_date
WHERE visit_date IS NULL

