CREATE TABLE departments (
    dept_no varchar primary key,
    dept_name varchar not null
);


CREATE TABLE employees (
    emp_no int  primary key,
    birth_date date,
    first_name varchar,
    last_name varchar,
    gender varchar,
    hire_date date
);


CREATE TABLE dept_emp (
    emp_no int,
	foreign key (emp_no) references employees(emp_no),
    dept_no varchar,
	foreign key (dept_no) references departments(dept_no),
    from_date date,
    to_date date 
);


CREATE TABLE dept_manager (
 	dept_no varchar ,
	foreign key (dept_no) references departments(dept_no),
    emp_no int,
	foreign key (emp_no) references employees(emp_no),
    from_date date ,
    to_date date  
);


CREATE TABLE salaries (
    emp_no int,
	foreign key (emp_no) references employees(emp_no),
    salary int ,
    from_date date,
    to_date date 
);


CREATE TABLE title (
    emp_no int,
	foreign key (emp_no) references employees(emp_no),
    title varchar,
    from_date date,
    "to_date" date
);


select * from departments;
select * from employees;
select * from dept_emp;
select * from dept_manager;
select * from salaries;
select * from title;
