-- 1번 문제
select first_name, hire_date from employees
where hire_date = (select max(hire_date) from employees) order by first_name asc; 

-- 2번 문제
select a.employee_id,
a.last_name,
a.salary
from employees a, 
(select department_id,
avg(salary) as avg_salary 
from employees 
group by department_id) b
where a.department_id = b.department_id 
and a.salary > b.avg_salary;

-- 3번 문제
select employee_id, first_name, last_name, job_id, salary
from employees
where salary = (select max(salary) from employees
where salary = (select avg(salary) from employees));

select first_name from employees where avg(salary) = (select max(avg) from (select department_id, avg(salary) as avg from employees group by department_id));

select department_id, avg(salary) as avg from employees group by department_id;

