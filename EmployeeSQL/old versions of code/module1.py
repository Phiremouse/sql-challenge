

import pandas as pd
from sqlalchemy import create_engine
engine = create_engine('postgresql://sqlalc:1234@localhost:5432/EmployeeSQL')
connection = engine.connect()

query='select t.title,avg(s.salary) as averageSalary from titles as t join salaries as s on t.emp_no = s.emp_no group by t.title'
df=pd.read_sql_query(query,connection)



connection.close()

