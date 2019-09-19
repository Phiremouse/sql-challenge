select t.title,avg(s.salary) as averageSalary
from titles as t
join salaries as s
on t.emp_no = s.emp_no
group by t.title
