-- 1번 문제

select e.EMPLOYEE_ID as "사번", 
e.FIRST_NAME as "이름", 
d.DEPARTMENT_NAME as "부서명",
e1.first_name as "매니저 이름"
from EMPLOYEES e, DEPARTMENTS d, EMPLOYEES e1
where e.MANAGER_ID = d.MANAGER_ID
and e.MANAGER_ID = e1.EMPLOYEE_ID;

-- 2번 문제

select region_name as "지역이름", country_name as "나라이름"
  from countries c, regions r
 where c.region_id = r.region_id
 order by "지역이름" desc, "나라이름" desc;
 
 -- 3번 문제
 
select d.department_id as "부서번호",
 d.department_name as "부서이름",
 e.first_name as "매니저이름",
 l.city as "도시이름",
 c.country_name as "나라이름",
 r.region_name as "지역이름"
  from employees e, departments d, locations l, countries c, regions r
 where e.manager_id = d.manager_id
 and d.location_id = l.location_id
 and l.country_id = c.country_id
 and c.region_id = r.region_id; 
 
 -- 4번 문제
 
select e.employee_id,
e.first_name || ' ' || e.last_name
from employees e, jobs j, job_history j1
where e.employee_id = j1.employee_id
and j.job_id = j1.job_id
and j1.employee_id = e.employee_id
and j.job_title = 'Public Accountant';


-- 5번 문제

select e1.employee_id as "사번",
e1.first_name as "이름", 
e1.last_name 
from employees e, employees e1
where e.employee_id = e1.employee_id
and e.last_name = e1.last_name 
order by last_name asc;

-- 6번 문제

select e.employee_id, e.last_name
from employees e, employees e1
where e.MANAGER_ID = e1.EMPLOYEE_ID
and e.HIRE_DATE < e1.HIRE_DATE;
