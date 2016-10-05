-- NULL test

select employee_id, salary, commission_pct, salary + commission_pct * salary from employees;

select employee_id, salary, commission_pct, salary + nvl(commission_pct, 0) * salary from employees;

select nvl(null, 10) from dual;

select nvl(20, 10) from dual;

-- NVL test

select employee_id, nvl(manager_id, 0) from EMPLOYEES;