drop table departments;

create table titles (
	title_id varchar(5) not null,
	title varchar(30) not null,
	primary key (title_id)
);

create table departments (
	dept_no varchar(4) not null,
	dept_name varchar(30) not null,
	primary key(dept_no)
);

create table employees (
	emp_no int not null,
	emp_title_id varchar(5) not null,
	birth_date varchar(10) not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar(1) not null,
	hire_date varchar(10) not null,
	primary key(emp_no),
	foreign key(emp_title_id) references titles(title_id)
);

create table dept_manager (
	dept_no varchar(4) not null,
	emp_no int not null,
	primary key (dept_no, emp_no),
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

create table dept_emp (
	emp_no int not null,
	dept_no varchar(4) not null,
	primary key (dept_no, emp_no),
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

create table salaries (
	emp_no int not null,
	salary int not null,
	primary key (emp_no),
	foreign key (emp_no) references employees(emp_no)
);
