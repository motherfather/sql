-- 집계

SELECT MAX (salary) FROM employees;

SELECT MIN (salary) FROM employees;

SELECT SUM (salary) FROM employees;

SELECT COUNT (salary) FROM employees;

-- 집계함수의 결과로 하나의 ROW만 남음

  SELECT AVG (salary)
    FROM employees
ORDER BY AVG (salary) DESC;

-- GROUP BY에 의해서 department_id 만큼의 row가 남아서 SELECT에 department_id가 가능!
-- 최종 테이블과 칼럼이 같아야 가능!!

  SELECT department_id,
         AVG (salary),
         MAX (salary),
         MIN (salary)
    FROM employees
GROUP BY department_id
ORDER BY AVG (salary) DESC;

  SELECT department_id, AVG (salary)
    FROM employees
--  WHERE AVG (salary) > 5000
GROUP BY department_id
  HAVING AVG (salary) > 5000;