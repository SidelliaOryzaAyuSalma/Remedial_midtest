SELECT
   sub.salary
from (
  SELECT
      *,
      dense_rank() over (order by salary desc) as rank
  from employee_table
) sub
where sub.rank = 3;