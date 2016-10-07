-- constraint 2
drop table book cascade constraint;

create table book(
no number(10),
title varchar2(120) not null,		-- not null
pub_date date not null,			-- not null
state varchar2(12) not null,		-- not null
author_no number(10)
);

alter table book add constraint c_book_pk primary key(no);
alter table book add constraint c_book_check check(state in('대여중', '대여가능'));
alter table book add constraint c_book_fk 
foreign key (author_no) references author(no) on delete set null;

select * from book;