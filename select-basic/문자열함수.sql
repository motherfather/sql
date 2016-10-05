-- 문자열 함수

select lower('Database Management System') from dual;

select upper('Database Management System') from dual;

select lower(last_name), upper(first_name) from employees;

select initcap('database management system') from dual;

select concat(first_name, last_name) from employees;

select concat(concat(first_name, ' '), last_name) from employees;

select first_name || ' ' || last_name from employees;

select substr('Database Management System', 2, 4) from dual;

select length('Database Management System') from dual;

select instr('Database Management System', 'Sys') from dual;

select instr(lower('Database Management System'), 'sys') from dual;

select employee_id, lpad(salary, 10, '*') from employees;

select employee_id, rpad(salary, 10, '*') from employees;

select trim('#' from '####Data##base####') from employees;

select '---' || trim(' ' from ' Datebase           ') || '---' from dual;

select '---' || ltrim('     Datebase           ', ' ') || '---' from dual;

select '---' || rtrim('    Datebase           ', ' ') || '---' from dual;

select replace('Database Management System', 'a', 'A') from dual;