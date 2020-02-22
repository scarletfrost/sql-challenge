-- 1.List the following details of each employee: employee number, last name, first name, gender, and salary.
select emp.emp_no, emp.last_name, emp.first_name, emp.gender, s.salary 
from employees emp join salaries s on (emp.emp_no = s.emp_no);

-- 2.List employees who were hired in 1986.
select first_name, last_name, hire_date from employees where hire_date between '1985-12-31' and '1987-01-01';

-- 3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select dep.dept_no, dep.dept_name, dm.emp_no, emp.last_name, emp.first_name, dm.from_date, dm.to_date from department dep 
join dept_manager dm on dep.dept_no = dm.dept_no
join employees emp on dm.emp_no = emp.emp_no;

-- 4.List the department of each employee with the following information: employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name from employees emp
join dept_emp de on de.emp_no = emp.emp_no
join department dep on dep.dept_no = de.dept_no;

-- 5.List all employees whose first name is "Hercules" and last names begin with "B."
select first_name,last_name  from employees where first_name = 'Hercules' and last_name like 'B%';

-- 6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name from employees emp
join dept_emp de on de.emp_no = emp.emp_no
join department dep on dep.dept_no = de.dept_no
  where dep.dept_name = 'Sales';

-- 7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name from employees emp
join dept_emp de on de.emp_no = emp.emp_no
join department dep on dep.dept_no = de.dept_no
  where dep.dept_name = 'Sales' or dep.dept_name= 'Development';

-- 8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) from employees group by last_name order by count(last_name);
