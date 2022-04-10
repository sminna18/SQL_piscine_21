BEGIN; --Начало транзакции --Session1;

UPDATE pizzeria set rating = 5 where name = 'Pizza Hut'; -- Изменеиеия --Session1;

select * from pizzeria where name  = 'Pizza Hut'; --Session2;

Commit; --Установка изменеиений --Session1;

select * from pizzeria where name  = 'Pizza Hut'; --Session2;
