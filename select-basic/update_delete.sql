-- DML

-- 2) update

select * from employees;
-- where department_id = 50;

update employees
set salary = (select max(salary) from employees),
commission_pct = 0
where department_id = 50;

-- 3) delete
-- 에러 : 참조키가 있는 경우 삭제할 수 없음
-- delete from employees;

delete from employees
where employee_id = 102;

rollback;