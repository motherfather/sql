-- pseudo column
SELECT SYSDATE FROM author;

-- sysdate 사용 예시
-- 쓰여질 당시의 시간이 기록됨
INSERT INTO board
     VALUES (1,
             '안녕',
             '밥은 먹고 다니냐',
             SYSDATE);

-- user
SELECT USER FROM DUAL;

-- rowid, rownum
SELECT no, title, ROWNUM FROM book
order by title desc;