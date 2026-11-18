with cte as
(
select svc_name, min(uptime) as min_uptime
from svc_health
group by svc_name
),
rank_cte as(
select *, dense_rank() over(order by min_uptime ) rn
from cte
)

select svc_name, min_uptime
from rank_cte
where rn<=10
