-- 1번 문제
select count(employee_id)
from employees
where salary < (select avg(salary)
						from employees);

-- 2번 문제
select a.employee_id as "사번", 
a.last_name as "성", 
a.salary as "연봉"
from employees a, 
(select department_id,
max(salary) as max_salary
	from employees
group by department_id)b
where a.department_ID = b.department_id
and a.salary = b.max_salary
order by a.salary desc;

-- 3번 문제
select a.job_title as "업무명",
b."연봉 총합"
from jobs a, (select job_id,
					sum(salary) as "연봉 총합"
					from employees
					group by job_id)b
where a.job_id = b.job_id
order by "연봉 총합" desc;

-- 4번 문제
select a.employee_id, a.last_name, a.salary,
a.department_id
from employees a, (select department_id,
								  avg(salary) as avg_s
						 from employees
						 group by department_id)b
where a.department_id = b.department_id
and a.salary > b.avg_s;

-- 4-2 
select a.employee_id, a.last_name, a.salary,
a.department_id
from employees a, (select department_id,
								  avg(salary) as avg_s
						 from employees
						 group by department_id)b
where nvl(a.department_id, 0) = nvl(b.department_id, 0)
and a.salary >= b.avg_s;
