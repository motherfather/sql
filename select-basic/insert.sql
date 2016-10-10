-- DML

SELECT * FROM author;

SELECT * FROM book;

-- 1) insert

INSERT INTO author
     VALUES (1, '박경리');

INSERT INTO book
     VALUES (1,
             '토지',
             TO_DATE ('1985-01-01', 'yyyy-mm-dd'),
             '대여가능',
             1);

INSERT INTO book (author_no,
                  no,
                  state,
                  title)
     VALUES (1,
             2,
             '대여가능',
             '토지2');
			 
INSERT INTO book (author_no,
                  no,
                  pub_date,
                  state,
                  title)
     VALUES (1,
             2,
             TO_DATE ('1985-01-01', 'yyyy-mm-dd'),
             '대여가능',
             '토지2');
			 
INSERT INTO book (author_no,
                  no,
                  pub_date,
                  state,
                  title)
     VALUES (1,
             2,
             TO_DATE ('1985-01-01', 'yyyy-mm-dd'),
             '대여가능',
             select dsdsf from dsdsds);		-- 가능!!

COMMIT;

-- 3) delete
delete from book where author_no = 1;
delete from author where name = '박경리';

select * from book;
select * from author;

rollback;