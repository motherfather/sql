-- inner join(equi join)
SELECT a.employee_id,
       a.department_id,
       a.first_name,
       b.department_name
  FROM employees a, departments b
 WHERE a.department_id = b.department_id                          -- Join 조건!!
                                        AND a.salary > 5000;                -- row 선택 조건!!

-- outer join
select count(*)
from employees a, departments b
where a.department_id = b.department_id;

select count(*)
from employees a, departments b
where a.department_id (+)= b.department_id;

select nvl(a.first_name, '소속사원이없음'), b.department_name
from employees a, departments b
where a.department_id (+)= b.department_id;		-- =(+)는 Error!!!!

-- self join
select emp.first_name, man.first_name
from employees emp, employees man
where emp.manager_ID = man.employee_id;

select emp.first_name, nvl(man.first_name, 'none manager')
from employees emp, employees man
where man.employee_id (+)= emp.manager_ID;

select * from employees where manager_id is null;