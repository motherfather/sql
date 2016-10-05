-- null 관련 함수

select nvl(null, 0) from dual;
select nvl(123, 0) from dual;

select employee_id, nvl(commission_pct, 0), nvl(commission_pct, 0)*salary from employees;

select nvl2(null, 10, 0) from dual;
select nvl2(123, 10, 0) from dual;

select employee_id, nvl2(commission_pct, commission_pct*salary, 0) from employees;

select employee_id, nvl2(commission_pct, salary+commission_pct*salary, salary) as "이번달 지급할 월급" from employees;

select nullif(5, 3+2) from dual;
select nullif(5, 3-2) from dual;

select coalesce(null, null, 1, 2, 3) from dual;
select coalesce(0, null, 1, 2, 3) from dual;

--select employee_id, nvl(manager_id, '매니저없음') from employees;
select employee_id, nvl(to_char(manager_id), '매니저없음') from employees;