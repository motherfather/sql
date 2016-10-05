-- WHERE test

select employee_id, salary from employees where 5000 < salary and salary < 10000;

select employee_id, salary from employees where salary between 5000 and 10000;

select employee_id, manager_id from employees where manager_id is null;

-- LIKE 검색

select first_name from employees where first_name like 'E%';

select first_name from employees where first_name like '%ra';

select first_name from employees where first_name like '%ra%';

select first_name from employees where first_name like 'E____';

select first_name from employees where first_name like '____a';