--  1.  Who checked out the book 'The Hobbit’?
--------------------------------------------------------------------------------
select member.name from member
where id = (
    select member_id from checkout_item
    where book_id = (select id from book where title = 'The Hobbit')
);
--  output:
--      Anand Beck

--  2.  How many people have not checked out anything?
--------------------------------------------------------------------------------
select count(*) from member
left join checkout_item on member.id = checkout_item.member_id
where checkout_item.member_id is NULL;
--  output:
--      37

--  3.  What books and movies aren't checked out?
--------------------------------------------------------------------------------
select title from book
left join checkout_item on book.id = checkout_item.book_id
where member_id is null union
select title from movie left join checkout_item on movie.id = checkout_item.movie_id
where member_id is null;
--  output:
--      1984
--      Catcher in the Rye
--      Crouching Tiger, Hidden Dragon
--      Domain Driven Design
--      Fellowship of the Ring
--      Lawrence of Arabia
--      Office Space
--      Thin Red Line
--      To Kill a Mockingbird
--      Tom Sawyer

--  4.  Add the book 'The Pragmatic Programmer', and add yourself as a member.
        Check out 'The Pragmatic Programmer'. Use your query from question 1 to
        verify that you have checked it out. Also, provide the SQL used to update
        the database.
--------------------------------------------------------------------------------
insert into book (title) values ('The Pragmatic Programmer');
insert into member (name) values ('Zhixiong Tang');
insert into checkout_item (member_id, book_id) values (
    (select id from member where name = 'Irsal Alsanea'),
    (select id from book where title = 'The Pragmatic Programmer')
);

--  5.  Who has checked out more that 1 item? (Tip: Research the GROUP BY syntax.)
--------------------------------------------------------------------------------
select name from member where id in (select member_id
    from (
        select member_id, count(member_id) as count_of_members from checkout_item group by member_id
    )
    where count_of_members > 1
);
--  output:
--      Anand Beck
--      Frank Smith
