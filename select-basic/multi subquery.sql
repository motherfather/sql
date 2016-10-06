-- multi sub query

-- 문) job_id가 'IT_PROG'인 직원들이 받는 연봉보다 많이 받는 직원을 출력하시오
-- >ALL, <ALL
select salary from employees where job_id = 'IT_PROG';
select first_name, salary
  from employees
 where salary >ALL (select salary from employees where job_id = 'IT_PROG');

-- 문) job_id가 'IT_PROG'인 직원들이 받는 연봉과 같은 연봉을 받는 직원은?
-- <any, =any(in), !=any(not in), >any 
select first_name, salary
  from employees
 --where salary in (select salary from employees where job_id = 'IT_PROG');
 where salary =any (select salary from employees where job_id = 'IT_PROG');
-- in과 =any는 같음!!!

-- exists
select first_name, salary
  from EMPLOYEES
 where exists(select salary from employees where job_id = 'IT_PROG');

