BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE; --session1

BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE; --session2

select * from pizzeria where name  = 'Pizza Hut'; --session1

update pizzeria set rating=3.0 where name = 'Pizza Hut'; --session2

commit; --session2

select * from pizzeria where name  = 'Pizza Hut'; -- session1

commit; --session1

select * from pizzeria where name  = 'Pizza Hut'; -- session1

select * from pizzeria where name  = 'Pizza Hut'; --session2
