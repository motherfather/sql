-- 문자열 리터럴 vs alias 이름 (큰따옴표("~~~"))

select first_name || ' ' || last_name as "나의 문자열" from employees;

select sysdate from dual;

select to_char(sysdate, 'yy/mm/dd') from dual;

select to_char(sysdate, 'yyyy-MM-dd hh:mi:ss') from dual;

select to_char(sysdate, 'yyyy-MM-dd hh24:mi:ss') from dual; -- 분은 mi

