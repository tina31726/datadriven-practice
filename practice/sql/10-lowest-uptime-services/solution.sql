with cte as 
(
select svc_name, min(uptime) as min_uptime
from svc_health
group by svc_name
),
rank_cte as
(
select svc_name, min_uptime, dense_rank() over (order by min_uptime) as rank_num
from cte
)

select svc_name, min_uptime
  from rank_cte
  where rank_num<=10
  order by min_uptime
