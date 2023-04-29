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
    	dept_no VARCHAR NOT NULL,
    	emp_no INT NOT NULL,
    	PRIMARY KEY (dept_no, emp_no),
    	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)   
);
	CREATE TABLE "dept_manager" (
		dept_no VARCHAR NOT NULL REFERENCES departments(dept_no),
		emp_no INT NOT NULL REFERENCES employees(emp_no),
		PRIMARY KEY (dept_no, emp_no),
		FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
		FOREIGN KEY (dept_no) REFERENCES departments (dept_no)   
);

	CREATE TABLE "salaries" (
    	emp_no INT NOT NULL,
    	salary INT NOT NULL,
    	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
		PRIMARY KEY (emp_no)
);
);
