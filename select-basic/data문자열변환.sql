-- date -> 문자열

select employee_id, hire_date from employees;

select employee_id, to_char(hire_date, 'yyyy"년"mm"월"dd"일" am hh12"시":mi"분":ss"초"') from employees;
-- am이나 pm 아무거나 써도됨
select employee_id, to_char(hire_date, 'yyyy"년"mm"월"dd"일" hh24"시":mi"분":ss"초" day d') from employees;

select employee_id, to_char(hire_date, 'yyyy"년"mm"월"dd"일" ddd"일째 되는날"') from employees;

select employee_id, to_char(hire_date, 'year:syear') from employees;

select employee_id, to_char(hire_date, 'rr') from employees;