-- drop table book;
-- drop table author;
--
-- create table author(
--     id INTEGER PRIMARY KEY ,
--     name varchar(30)
-- );
-- create table book (
--     name varchar(30) PRIMARY KEY ,
--     author_id INTEGER REFERENCES author (id)
-- );
-- insert into author(id, name) values (1, 'Пикуль');
-- insert into author(id, name) values (2, 'Стругацкие');
-- insert into author(id, name) values (3, 'Пушкин');
-- insert into book(name, author_id) values ('Честь имею', 1);
-- insert into book(name, author_id) values ('Каторга', 1);
-- insert into book(name, author_id) values ('Тройка', 2);
-- insert into book(name, author_id) values ('Понедельник... ', 2);
-- insert into book(name, author_id) values ('Пикник на обочине', 2);
-- insert into book(name, author_id) values ('Евгений Онегин', 3);
--Есть таблица book с колонками name и author_id и таблица author с колонками id и name.
--Вывести все книги определенного автора (author.name).
select book.name from book
inner join author on (book.author_id = author.id)
where author.name LIKE 'Пушкин';

select book.name from book
where book.author_id in (select id from author where author.name LIKE 'Стругацкие');