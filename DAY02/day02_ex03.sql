WITH new_table (missing_date) AS(
SELECT g1 AS missing_date
FROM (SELECT g1::date FROM generate_series('2022-01-01', '2022-01-10', '1 day'::interval) AS g1 ) t1 )
SELECT missing_date
FROM new_table
LEFT JOIN
(SELECT * FROM person_visits WHERE person_id = 1 OR person_id = 2) t2
ON missing_date = visit_date
WHERE visit_date IS NULL
