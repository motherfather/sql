-- constraints
drop table book cascade constraint;

create table book(
no number(10),
title varchar2(120) not null,		-- not null
pub_date date not null,			-- not null
state varchar2(12) not null,		-- not null
author_no number(10),

constraint c_book_fk 
foreign key(author_no)
references author(no) 
--on delete cascade,
on delete set null,
-- constraint c_book_u unique(no)			-- unique
primary key(no),		-- primary key
--constraint c_book_p primary key (no)
constraint c_book_check check(state in ('대여중', '대여가능'))
);

insert into book values(1, '토지1', to_date('2005/03/12', 'yyyy/mm/dd'), '대여중', 1);
insert into book values(2, '토지3', to_date('2005/03/12', 'yyyy/mm/dd'), '대여가능', 2);
insert into book values(3, '논어', to_date('2005/03/12', 'yyyy/mm/dd'), '대여중', 2);

-- delete from book where author_no = 2;
select * from book;

drop table author cascade constraint;

create table author(
no number(10),
name varchar2(20) not null,
primary key(no)
);

insert into author values(1, '박경리');
insert into author values(2, '공자');

delete from author where no = 2;

select * from author;