-- transaction type
commit;

set transaction read only;

select * from book;

-- delete from book;

commit;

set transaction read write;

select * from book;

insert into book values(3, '토지3', sysdate, '대여가능', 1); 

-- isolation type
select * from book;

commit;

set transaction isolation level serializable;
update book set title = '토지5' where no = 2;