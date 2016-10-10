-- constraint 2
DROP TABLE book CASCADE CONSTRAINT;

CREATE TABLE book
(
   no          NUMBER (10),
   title       VARCHAR2 (120) NOT NULL,                            -- not null
   pub_date    DATE NOT NULL,                                      -- not null
   state       VARCHAR2 (12) NOT NULL,                             -- not null
   author_no   NUMBER (10)
);

ALTER TABLE book
   ADD CONSTRAINT c_book_pk PRIMARY KEY (no);

ALTER TABLE book
   ADD CONSTRAINT c_book_check CHECK (state IN ('대여중', '대여가능'));

ALTER TABLE book
   ADD CONSTRAINT c_book_fk FOREIGN KEY (author_no)
       REFERENCES author (no) ON DELETE SET NULL;

ALTER TABLE book
   ADD CONSTRAINT c_book_fk FOREIGN KEY (author_no)
       REFERENCES author (no) ON DELETE CASCADE;

SELECT * FROM book;