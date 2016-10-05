-- Date

SELECT employee_id, hire_date FROM employees;

SELECT VALUE
  FROM nls_session_parameters
 WHERE parameter = 'NLS_DATE_FORMAT';

SELECT ADD_MONTHS (SYSDATE, 2) FROM DUAL;

SELECT LAST_DAY (SYSDATE) FROM DUAL;

SELECT MONTHS_BETWEEN (ADD_MONTHS (SYSDATE, 2), SYSDATE) FROM DUAL;

SELECT MONTHS_BETWEEN (SYSDATE, ADD_MONTHS (SYSDATE, 2)) FROM DUAL;

SELECT employee_id, job_id, ROUND (MONTHS_BETWEEN (end_date, start_date))
  FROM job_history;

SELECT employee_id, job_id, MONTHS_BETWEEN (end_date, start_date)
  FROM job_history;

--select next_day('01-sep-95', 'friday') from dual;

-- 1-> sun, 2-> mon, 3, 4, 5, 6, 7 -> sat
SELECT NEXT_DAY ('16/10/05', 5) FROM DUAL;