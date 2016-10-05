-- 숫자 -> 문자열

select employee_id, salary from employees;

select employee_id, to_char(salary, '9999') from employees;
select employee_id, to_char(salary, '99999') from employees;
select employee_id, to_char(salary, '09999') from employees;
select employee_id, to_char(salary, '99,999') from employees;

select to_char(3.14158921, '9.99') from dual;
select to_char(3.14158921, '9.99999999') from dual;

select employee_id, to_char(salary, '99999') from employees;
select employee_id, to_char(salary, 'fm99999') from employees;

select employee_id, to_char(salary, '$99999') from employees;
select employee_id, to_char(salary, 'l99999') from employees;

select to_char(-12345, '99999mi') from dual;
select to_char(-12345, 's99999') from dual;
select to_char(-12345, '99999s') from dual;
select to_char(0, 's99999') from dual;

select to_char(12, 'rn') from dual;
select to_char(12, 'RN') from dual;

select to_char(1234, 'xxxx') from dual;
select to_char(1234, 'XXXX') from dual;
