SELECT person_id FROM person_order
where order_date = '2022-01-07'
EXCEPT ALL
SELECT person_id FROM person_visits
where visit_date = '2022-01-07'