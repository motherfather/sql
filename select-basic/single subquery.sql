-- single row subquery

-- 문) 이름(first_name)이 Lex 사원 보다 월급이 많은 직원들 이름과 월급은?
--select salary from employees where first_name = 'Lex';
--select first_name, salary from employees where salary > 17000;
-- 합체!!!!
SELECT first_name, salary
  FROM employees
 WHERE salary > (SELECT salary
                   FROM employees
                  WHERE first_name = 'Lex');

SELECT first_name, salary
  FROM employees
 WHERE salary = (SELECT salary
                   FROM employees
                  WHERE first_name = 'Lex');

SELECT first_name, salary
  FROM employees
 WHERE salary < (SELECT salary
                   FROM employees
                  WHERE first_name = 'Lex');

SELECT first_name, salary
  FROM employees
 WHERE salary <> (SELECT salary		-- <> 는 != 같음
                   FROM employees
                  WHERE first_name = 'Lex');
				  
-- 문) 전체 직원의 평균 연봉보다 더 많이 받는 직원의 이름과 연봉은?
--select avg(salary) from employees;
select first_name, salary 
  from employees 
 where salary > (select avg(salary) from employees); 
