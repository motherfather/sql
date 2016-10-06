-- ansi join sql문 (1999 syntax)

-- natural join	테이블의 칼럼이름이 같은 경우에만....
select count(*)
from employees a
natural join departments b;

select count(*)
from employees a, departments b
where a.DEPARTMENT_ID = b.DEPARTMENT_ID
and a.MANAGER_ID = b.MANAGER_ID;

select count(*)
from employees a
join departments b
using (department_id);

-- inner join 표준 sql문
select count(*)
from employees a
join departments b
on a.DEPARTMENT_ID = b.DEPARTMENT_ID;

select count(*)
from employees a, departments b
where a.DEPARTMENT_ID = b.DEPARTMENT_ID;

-- outer join 표준 sql문
select count(*)
from employees a
right outer join departments b
on a.DEPARTMENT_ID = b.DEPARTMENT_ID;

select count(*)
from departments b
left outer join employees a
on a.DEPARTMENT_ID = b.DEPARTMENT_ID;

select count(*)
from employees a
full outer join departments b
on a.DEPARTMENT_ID = b.DEPARTMENT_ID;