-- rownum

-- 문제 직원 중에 월급이 상위 10~20 까지 골라낸다.
-- 문제 rownum이 세팅된 이후에 order by가 실행되므로 순서가 엉키게 된다.
select employee_id, salary, rownum
from employees
order by salary desc;

-- 해결방법
-- where절에서 rownum조건이 안맞기 때문에 선택된 row가 하나도 없다!!
select rownum, employee_id, salary
from (select employee_id, salary
	from employees
	order by salary desc)
where 10 <= rownum and rownum <= 20;

-- 최종 해결 방법(top-K)
select *
from(select rownum rn, employee_id, salary
	from (select employee_id, salary
		from employees
		order by salary desc))
where 10 <= rn and rn <= 20;

select * from employees;