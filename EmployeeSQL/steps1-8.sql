--1
select e.emp_no,e.last_name,e.first_name,e.gender,s.salary
from employees as e
left join salaries as s
on  e.emp_no = s.emp_no;

--2
select e.emp_no,e.last_name,e.first_name,e.gender,e.hire_date
from employees as e
where extract(year from e.hire_date)=1986;

--3 could also try a subquery
select d.dept_no,d.dept_name, dm.emp_no,e.last_name,e.first_name,dm.from_date, dm.to_date
from departments as d
left join dept_manager as dm
on d.dept_no=dm.dept_no
left join employees as e
on dm.emp_no= e.emp_no;

--4 subquery again
select e.emp_no,e.last_name, e.first_name, d.dept_name
from departments as d
left join dept_emp as de
on d.dept_no = de.dept_no
left join employees as e
on de.emp_no = e.emp_no;

--5
select *
from employees as e
where e.first_name ='Hercules' and e.last_name like 'B%';

--6




