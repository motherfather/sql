SELECT job_id FROM employees;

SELECT DISTINCT job_id
  FROM employees;

SELECT employee_id,
       salary,
       CASE job_id
          WHEN 'AC_ACCOUNT' THEN salary + 0.1 * salary
          WHEN 'AC_MGR' THEN salary + salary * 0.15
          WHEN 'AD_PRES
		  '    THEN salary + salary * 0.3
          ELSE salary
       END
          AS "이번 월급"
  FROM employees;

SELECT employee_id,
       salary,
       DECODE (job_id,
               'AC_ACCOUNT', salary + 0.1 * salary,
               'AC_MGR', salary + salary * 0.15,
               'AD_PRES', salary + salary * 0.3,
               salary)
          AS "이번 월급"
  FROM employees;