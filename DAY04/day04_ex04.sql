CREATE VIEW v_symmetric_union AS
SELECT t1.person_id-t2.person_id AS person_id
FROM
(SELECT *
FROM person_visits
WHERE visit_date = '2022-01-02') t1,
(SELECT *
FROM person_visits
WHERE visit_date = '2022-01-06') t2
UNION
SELECT t2.person_id-t1.person_id
FROM
(SELECT *
FROM person_visits
WHERE visit_date = '2022-01-02') t1,
(SELECT *
FROM person_visits
WHERE visit_date = '2022-01-06') t2