-- create table

CREATE TABLE book
(
   no         NUMBER (10),
   title      VARCHAR2 (120),
   author     VARCHAR2 (80),
   pub_date   DATE
);

-- insert

INSERT INTO book
     VALUES (1,
             '토지',
             '박경리',
             TO_DATE ('2005-03-12', 'yyyy-mm-dd'));

INSERT INTO book (title,
                  no,
                  author,
                  pub_date)
     VALUES ('슬램덩크',
             2,
             '다케이코',
             TO_DATE ('2006/04/05', 'yyyy/mm/dd'));
			 
-- delete
delete from book where author = '다케이코';

-- update
update book set title = '슬램덩크2', pub_date = to_date('2007/04/05', 'yyyy/mm/dd')
where title = '슬램덩크';

-- commit
COMMIT;

-- rollback
rollback;


SELECT * FROM book;