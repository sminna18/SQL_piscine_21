BEGIN TRANSACTION ISOLATION LEVEL read committed ; --session1

BEGIN TRANSACTION ISOLATION LEVEL read committed ; --session2

select sum(rating) from pizzeria where name  = 'Pizza Hut'; --session1

update pizzeria set rating=1 where name = 'Pizza Hut'; commit;  --session2

select sum(rating) from pizzeria where name  = 'Pizza Hut'; commit; --session1

select sum(rating) from pizzeria where name  = 'Pizza Hut'; --session1

select sum(rating) from pizzeria where name  = 'Pizza Hut'; --session2
