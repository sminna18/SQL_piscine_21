SELECT g1 AS generated_date
FROM (SELECT g1::date FROM generate_series('2022-01-01', '2022-01-31', '1 day'::interval) AS g1 ) t1 
EXCEPT
SELECT *
FROM v_generated_dates
ORDER BY 1