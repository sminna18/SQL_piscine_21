BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ; -- session_1

BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ; -- session_2

select * from pizzeria where name  = 'Pizza Hut'; -- session_1

update pizzeria set rating=3.6 where name = 'Pizza Hut'; -- session_2

commit ; -- session_2

select * from pizzeria where name  = 'Pizza Hut'; -- session_1

commit ; -- session_1

select * from pizzeria where name  = 'Pizza Hut'; -- session_1

select * from pizzeria where name  = 'Pizza Hut'; -- session_2