-- 문) 각 부서별로 최고 연봉을 받는 직원의 이름과 연봉을 출력하라
-- where절에 있는 subquery
 select first_name, salary
   from employees
  where (department_id, salary) in (select department_id, max(salary)
  												  from employees
 											group by department_id);
									
-- from절에 있는 subquery		
select a.first_name, a.salary
  from employees a,
  (select department_id,
   			max(salary) as max_salary
  	from employees
 group by department_id)b
 where a.department_id = b.department_id
 and a.salary = b.max_salary;
 
 -- correlated(연관) query 
 select a.first_name, a.salary
 from employees a
 where salary = (select max(salary)
 						from employees 
						where department_id = a.department_id);