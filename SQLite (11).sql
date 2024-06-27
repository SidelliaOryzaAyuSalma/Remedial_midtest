SELECT
   *,
   row_number() over (order by salary desc) as rank
from employee_table ;