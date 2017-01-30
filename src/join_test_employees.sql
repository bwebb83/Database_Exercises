# joining manager name with department
select concat(employees.first_name, " ", employees.last_name) as employee_name, dept_name
# use table that has foreign keys for all info you need
from departments
join dept_manager on dept_manager.dept_no = departments.dept_no
join employees on dept_manager.emp_no = employees.emp_no
where dept_manager.to_date > curdate();


# joining manager who are women with department
select concat(employees.first_name, " ", employees.last_name) as employee_name, dept_name
# use table that has foreign keys for all info you need
from departments
  join dept_manager on dept_manager.dept_no = departments.dept_no
  join employees on dept_manager.emp_no = employees.emp_no
where dept_manager.to_date > curdate() and employees.gender='f';


# count up current employees with titles in customer service
select titles.title as Title, count(titles.emp_no)
from dept_emp
join titles on titles.emp_no = dept_emp.emp_no
join departments on departments.dept_no=dept_emp.dept_no
where dept_emp.to_date > curdate() and dept_emp.dept_no='d009' and titles.to_date>curdate()
group by Title;



#current salary of current managers
select concat(employees.first_name, " ", employees.last_name) as employee_name, dept_name, salaries.salary as salaries
# use table that has foreign keys for all info you need
from departments
join dept_manager on dept_manager.dept_no = departments.dept_no
join employees on dept_manager.emp_no = employees.emp_no
join salaries on dept_manager.emp_no = salaries.emp_no
where dept_manager.to_date > curdate() and salaries.to_date>curdate()
group by employee_name, dept_name, salaries;


select concat(employees.first_name , " ", employees.last_name) as employee_name, departments.dept_name, concat(managers.first_name, " ", managers.last_name) as managers
from dept_emp
join departments on dept_emp.dept_no = departments.dept_no
join dept_manager on departments.dept_no = dept_manager.dept_no
join employees on dept_emp.emp_no = employees.emp_no
join employees as managers on dept_manager.emp_no = employees.emp_no
where dept_emp.to_date>curdate() and dept_manager.to_date>curdate();







