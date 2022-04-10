CREATE INDEX idx_person_order_multi 
			ON person_order (menu_id, order_date);
			
SET enable_seqscan = OFF;
explain analyze 

SELECT person_id, menu_id,order_date
FROM person_order
WHERE person_id = 8 AND menu_id = 19;

