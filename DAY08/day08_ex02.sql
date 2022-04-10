BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
select * from pizzeria where name  = 'Pizza Hut';
update pizzeria set rating = 4 where name = 'Pizza Hut';
commit ;
select * from pizzeria where name  = 'Pizza Hut';
