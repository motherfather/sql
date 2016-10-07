-- alter table

-- add
alter table book add(pubs varchar2(120));
alter table book add pubs varchar2(120);

-- modify
alter table book modify(pubs varchar2(200));

-- rename
alter table book rename column pubs to publishings;

-- drop
alter table book drop(publishings);
alter table book drop column publishings;  -- 두개가 같음!!

-- unused
alter table book set unused column author;
alter table book set unused(author);
alter table book drop unused columns;

-- drop table
-- drop table book;

-- truncate
truncate table book;

-- comment
comment on table book is '북정보를 저장하는 테이블';

select * from book;