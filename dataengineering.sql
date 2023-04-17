	CREATE TABLE "titles" (
		title_id VARCHAR NOT NULL PRIMARY KEY,
		title VARCHAR NOT NULL
);

	CREATE TABLE "employees" ( 
		emp_no INT NOT NULL PRIMARY KEY,
		emp_title_id VARCHAR NOT NULL REFERENCES titles(title_id),
		birth_date DATE,
		first_name VARCHAR,
		last_name VARCHAR,
		sex VARCHAR,
		hire_date DATE 
);

	CREATE TABLE "departments" (
		dept_no VARCHAR NOT NULL PRIMARY KEY,
		dept_name VARCHAR NOT NULL
);

	CREATE TABLE "dept_emp" (
		emp_no INT NOT NULL REFERENCES employees(emp_no),
		dept_no VARCHAR NOT NULL REFERENCES departments(dept_no)
);

	CREATE TABLE "dept_manager" (
		dept_no VARCHAR NOT NULL REFERENCES departments(dept_no),
		emp_no INT NOT NULL REFERENCES employees(emp_no)
);

	CREATE TABLE "salaries" (
		emp_no INT REFERENCES employees(emp_no),
		salary INT 
);
