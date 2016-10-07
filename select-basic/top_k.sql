-- top-k

select rownum, employee_id, salary
from (select employee_id, salary 
from employees order by salary desc)
where rownum = 1;

select *
from (select rownum as rn, employee_id, salary
		from (select employee_id, salary 
			from employees order by salary desc))
where 6 <= rn and rn <= 10;