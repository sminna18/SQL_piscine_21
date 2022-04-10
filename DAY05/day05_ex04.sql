CREATE UNIQUE INDEX idx_menu_unique 
			ON menu(pizzeria_id, pizza_name);
			
SET enable_seqscan = OFF;
explain analyze 

SELECT pizzeria_id, pizza_name 
		from menu
		where pizzeria_id > 0
		
		
