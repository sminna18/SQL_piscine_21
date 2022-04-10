BEGIN TRANSACTION ISOLATION LEVEL repeatable read; --session1

BEGIN TRANSACTION ISOLATION LEVEL repeatable read; --session2

select sum(rating) from pizzeria where name  = 'Pizza Hut'; --session1

update pizzeria set rating=5 where name = 'Pizza Hut'; commit; --sesssion2

select sum(rating) from pizzeria where name  = 'Pizza Hut'; commit; --session1

select sum(rating) from pizzeria where name  = 'Pizza Hut'; --session1

select sum(rating) from pizzeria where name  = 'Pizza Hut'; --session2
