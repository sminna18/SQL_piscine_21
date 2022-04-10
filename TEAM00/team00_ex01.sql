DROP TABLE IF EXISTS roads;

CREATE TABLE roads (
	node1 VARCHAR,
	node2 VARCHAR,
	cost INTEGER
);

INSERT INTO roads (node1, node2, cost)
VALUES	('A', 'B', 10),
		('B', 'A', 10),
		('A', 'C', 15),
		('C', 'A', 15),
		('A', 'D', 20),
		('D', 'A', 20),
		('B', 'D', 25),
		('D', 'B', 25),
		('D', 'C', 30),
		('C', 'D', 30),
		('B', 'C', 35),
		('C', 'B', 35);
		
		
		
		
WITH RECURSIVE rec AS (
SELECT 'A' AS all, roads.node1 AS current, 0 AS sum_cost, 1 AS iter  FROM roads WHERE node1 = 'A' 
UNION
SELECT rec.all || ',' || roads.node2, roads.node2, rec.sum_cost + roads.cost, iter + 1 
FROM roads, rec 
WHERE rec.current = roads.node1 AND iter < 4 AND rec.all NOT LIKE '%' || roads.node2 || '%'),

final_way AS
(SELECT sum_cost + roads.cost AS total_cost, '{' || rec.all || ',A' || '}' AS tour
FROM rec
JOIN roads
ON roads.node1 = rec.current AND roads.node2 = 'A'
WHERE rec.iter = 4)

SELECT *
FROM final_way
WHERE total_cost = (SELECT min(total_cost) FROM final_way)
OR total_cost = (SELECT max(total_cost) FROM final_way)
ORDER BY 1,2
