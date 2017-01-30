select * from employees
where hire_date in(
  select hire_date
  from employees
  where emp_no = 101010
);


select title from titles
where emp_no in (
  select emp_no
  from employees
  where first_name = 'Aamod'
);

select * from employees
where emp_no in (
  select emp_no
  from dept_manager
  where gender = 'f'
);