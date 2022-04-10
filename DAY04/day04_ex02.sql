CREATE VIEW v_generated_dates AS
SELECT g1 AS generated_date
FROM (SELECT g1::date FROM generate_series('2022-01-01', '2022-01-10', '1 day'::interval) AS g1 ) t1 