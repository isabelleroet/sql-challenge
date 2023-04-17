--data analysis 
--#1
-- List the employee number, last name, first name, sex, and salary of each employee.

SELECT employees.emp_no, 
last_name,
first_name,
sex
FROM employees
INNER JOIN salaries ON salaries.emp_no = employees.emp_no;

--#2
--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name,
last_name,
hire_date
FROM employees
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986';

--#3
--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT employees.emp_no,
first_name,
last_name,
departments.dept_no,
departments.dept_name
FROM employees
INNER JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_manager.dept_no;

--#4 
--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT employees.emp_no,
first_name,
last_name,
departments.dept_no,
departments.dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no;

--#5 
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT sex,
first_name,
last_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--#6 
--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT employees.emp_no,
first_name,
last_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
WHERE dept_no = 'd007'

--#7 
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no,
first_name,
last_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
WHERE dept_no = 'd005' OR dept_no = 'd007'

--#8
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
HAVING COUNT(last_name) > 1 
ORDER BY count DESC;