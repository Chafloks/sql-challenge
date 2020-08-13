select * from employees;
select * from titles;
select * from departments;
select * from dept_manager;
select * from dept_emp;
select * from salaries;

--1
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary from employees e
join salaries s on s.emp_no = e.emp_no;

--2
select e.first_name, e.last_name, e.hire_date from employees e
where e.hire_date between '1986-01-01' and '1986-12-31';

--3
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name from dept_manager dm
join employees e on dm.emp_no = e.emp_no
join departments d on d.dept_no = dm.dept_no;

--4
select e.emp_no, e.last_name, e.first_name, d.dept_name from employees e
join dept_emp de on de.emp_no = e.emp_no
join departments d on d.dept_no = de.dept_no;

--5
select e.first_name, e.last_name, e.sex from employees e
where e.first_name = 'Hercules' and e.last_name like 'B%';

--6
select e.emp_no, e.last_name, e.first_name, d.dept_name from employees e
join dept_emp de on de.emp_no = e.emp_no
join departments d on d.dept_no = de.dept_no
where d.dept_name = 'Sales';

--7
select e.emp_no, e.last_name, e.first_name, d.dept_name from employees e
join dept_emp de on de.emp_no = e.emp_no
join departments d on d.dept_no = de.dept_no
where d.dept_name in ('Development','Sales');

--8
select count(last_name) as Frequency, last_name from employees group by last_name order by Frequency desc;