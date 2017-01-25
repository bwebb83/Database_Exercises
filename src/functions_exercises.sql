select concat(count(*), " ", gender) as "employee count with gender"
from employees where (first_name  ='Irena' or  first_name= 'Vidya' or first_name=  'Maya')
group by gender;


select concat(first_name, " ", last_name) from employees
where last_name like 'e%' or last_name like '%e';

select datediff(curdate(), hire_date) as "days employed"
from employees where hire_date like '199%'
and birth_date like '%12-25'
order by hire_date desc, birth_date asc;

select concat(first_name, " ", last_name) as "full_name", count(first_name) as "number of people with this name" from employees
where last_name like '%q%' and not last_name like '%qu%'
group by full_name
order by `number of people with this name` desc;