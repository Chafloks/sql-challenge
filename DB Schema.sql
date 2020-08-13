show datestyle;
-- Database: employees

-- DROP DATABASE movies;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	title_id varchar(20) NOT NULL,
	title varchar(40) NOT NULL,
	primary key (title_id)
);

CREATE TABLE employees (
	emp_no integer NOT NULL,
	emp_title_id varchar(20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name varchar(50),
	last_name varchar(100) NOT NULL,
	sex varchar(5),
	hire_date date NOT NULL,
	primary key (emp_no),
	foreign key (emp_title_id) references titles(title_id)
);

CREATE TABLE departments (
	dept_no varchar(20) NOT NULL,
	dept_name varchar(40) NOT NULL,
	primary key (dept_no)
);

CREATE TABLE dept_manager (
	dept_no varchar(20) NOT NULL,
	emp_no integer NOT NULL,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

CREATE TABLE dept_emp (
	emp_no integer NOT NULL,
	dept_no varchar(20) NOT NULL,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

CREATE TABLE salaries (
	emp_no integer NOT NULL,
	salary integer NOT NULL,
	foreign key (emp_no) references employees(emp_no)
);

copy titles from 'C:\Users\siu_2\Desktop\titles.csv' delimiter ',' CSV HEADER;
copy employees from 'C:\Users\siu_2\Desktop\employees.csv' delimiter ',' CSV HEADER;
copy departments from 'C:\Users\siu_2\Desktop\departments.csv' delimiter ',' CSV HEADER;
copy dept_manager from 'C:\Users\siu_2\Desktop\dept_manager.csv' delimiter ',' CSV HEADER;
copy dept_emp from 'C:\Users\siu_2\Desktop\dept_emp.csv' delimiter ',' CSV HEADER;
copy salaries from 'C:\Users\siu_2\Desktop\salaries.csv' delimiter ',' CSV HEADER;