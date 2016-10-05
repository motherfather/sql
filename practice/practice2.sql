-- 문제1

SELECT MAX (salary) AS "최고임금",
       MIN (salary) AS "최저임금",
       MAX (salary) - MIN (salary) AS "최고임금 - 최저임금"
  FROM employees;

-- 문제2

SELECT TO_CHAR (MAX (hire_date), 'yyyy"년" mm"월" dd"일"') AS "입사일"
  FROM employees;

-- 문제3

  SELECT department_id AS "부서",
         AVG (salary) AS "평균임금",
         MAX (salary) AS "최고임금",
         MIN (salary) AS "최저임금"
    FROM employees
GROUP BY department_id
ORDER BY "평균임금" DESC, "최고임금" DESC, "최저임금" DESC;

-- 문제4

  SELECT job_id AS "업무",
         AVG (salary) AS "평균임금",
         MAX (salary) AS "최고임금",
         MIN (salary) AS "최저임금"
    FROM employees
GROUP BY job_id
ORDER BY "평균임금" DESC, "최고임금" DESC, "최저임금" DESC;

-- 문제5

SELECT TO_CHAR (MIN (hire_date), 'yyyy"년" mm"월" dd"일"') AS "입사일"
  FROM employees;

-- 문제6

  SELECT department_id AS "부서",
         AVG (salary) AS "평균임금",
         MIN (salary) AS "최저임금",
         AVG (salary) - MIN (salary) AS "(평균임금 - 최저임금)"
    FROM employees
GROUP BY department_id
  HAVING AVG (salary) - MIN (salary) < 2000
ORDER BY "(평균임금 - 최저임금)" DESC;

-- 문제7

  SELECT job_id AS "업무", max_salary - min_salary AS "차이"
    FROM jobs
ORDER BY "차이" DESC;

SELECT * FROM jobs;