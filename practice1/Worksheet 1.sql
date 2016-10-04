-- 1번
select first_name || ' ' || last_name as "이름", salary as "월급", phone_number as "전화번호" 
from employees order by hire_date asc; -- 디폴트가 asc

-- 2번
select job_title, max_salary from jobs, employees order by salary desc;

-- 3번
SELECT count(*) from EMPLOYEES where manager_id is null;

-- 4번
select job_title from jobs, employees 
order by first_name || ' ' || last_name, max_salary desc;
 
-- 5번
select count(distinct department_id) from employees;
select * from employees;
select count(*) from departments;
select * from departments;

-- 6번
select department_name from DEPARTMENTS
 order by length(department_name) DESC;
 
-- 7번
select count(*) from DEPARTMENTS where manager_id is null;

-- 8번
select distinct upper(country_name) from COUNTRIES, LOCATIONS
 where city is not null order by upper(country_name) asc;
 
 select upper(country_name) 
     from countries 
 order by upper(country_name) asc; 
 
 
-- 9번
select region_name from REGIONS order by length(region_name) asc;

-- 10번
select distinct lower(city) from LOCATIONS order by lower(city) asc;

