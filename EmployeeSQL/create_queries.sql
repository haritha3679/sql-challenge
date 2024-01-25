CREATE TABLE titles (
    emp_title VARCHAR  PRIMARY KEY NOT NULL,
    title VARCHAR  NOT NULL
   );
CREATE TABLE employees (
    emp_no INT PRIMARY KEY NOT NULL,
	emp_title VARCHAR   NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
	sex VARCHAR   NOT NULL,
	hire_date date NOT NULL,
    FOREIGN KEY (emp_title) REFERENCES titles(emp_title)
   
);

CREATE TABLE salaries (
    emp_no INT PRIMARY KEY NOT NULL ,
	salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
    
);
CREATE TABLE departments (
    dept_no VARCHAR  PRIMARY KEY NOT NULL,
    dep_name VARCHAR  NOT NULL
   );

CREATE TABLE dept_employee (
    emp_no INT   NOT NULL,
	dept_no VARCHAR  NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (dept_no, emp_no)
);
CREATE TABLE dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (dept_no, emp_no)
);
-- Import files using import tool and check the load
Select * from titles;
Select * from employees;
Select * from salaries;
Select * from departments;
Select * from dept_employee;
Select * from dept_manager;