select last_name from employees
group by last_name DESC
limit 10;


select first_name, last_name from employees where hire_date like '199%'
and birth_date like '%12-25'
order by birth_date, hire_date desc
limit 5 offset 45;
