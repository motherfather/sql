-- 1번 문제

  SELECT first_name, hire_date
    FROM employees
   WHERE hire_date = (SELECT MAX (hire_date) FROM employees)
ORDER BY first_name ASC;

-- 2번 문제

SELECT a.employee_id, a.last_name, a.salary
  FROM employees a,
       (  SELECT department_id, AVG (salary) AS avg_salary
            FROM employees
        GROUP BY department_id) b
 WHERE a.department_id = b.department_id AND a.salary > b.avg_salary;

-- 3번 문제

SELECT employee_id,
       first_name,
       last_name,
       j.JOB_TITLE,
       salary
  FROM employees a,
       jobs j,
       (  SELECT department_id, AVG (salary)
            FROM employees
        GROUP BY department_id
          HAVING AVG (salary) =
                    (SELECT MAX (avgs)
                       FROM (  SELECT department_id, AVG (salary) avgs
                                 FROM employees
                             GROUP BY department_id))) b
 WHERE a.department_id = b.department_id AND j.JOB_ID = a.job_id;

-- 4번문제

  SELECT d.DEPARTMENT_NAME, AVG (salary)
    FROM employees e, DEPARTMENTS d
   WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID
GROUP BY d.department_name
  HAVING AVG (salary) = (SELECT MAX (avgs)
                           FROM (  SELECT department_id, AVG (salary) avgs
                                     FROM employees
                                 GROUP BY department_id));

-- 5번 문제
select r.REGION_NAME, avg(e.salary) avgs
from EMPLOYEES e, DEPARTMENTS d, LOCATIONS l, COUNTRIES c, REGIONS r
where e.DEPARTMENT_ID = d.DEPARTMENT_ID
and d.LOCATION_ID = l.LOCATION_ID
and l.COUNTRY_ID = c.COUNTRY_ID
and c.REGION_ID = r.REGION_ID
group by r.region_name
having avg(salary) = (select max(avgs)
								from (select avg(e.salary) avgs
										from EMPLOYEES e, DEPARTMENTS d, LOCATIONS l, COUNTRIES c, REGIONS r
										where e.DEPARTMENT_ID = d.DEPARTMENT_ID
										and d.LOCATION_ID = l.LOCATION_ID
										and l.COUNTRY_ID = c.COUNTRY_ID
										and c.REGION_ID = r.REGION_ID
									group by r.region_name));

-- 6번 문제
select j.job_title, avg(salary)
from employees e, jobs j
where e.job_id = j.job_id
group by j.job_title
having avg(salary) = (select max(avgs)
							from (select avg(salary) avgs
							from EMPLOYEES e, JOBS j
							where j.JOB_ID = e.JOB_ID
							group by e.JOB_ID));