with cte as
(
select amount, dense_rank () over (order by amount desc) as dense_rank
 from cloud_costs
)
select distinct amount
from cte
where dense_rank <=3
