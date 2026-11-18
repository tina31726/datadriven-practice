with all_items as(
select svc_name, region, amount
  from cloud_costs
  union all
    select svc_name, region, amount
    from cost_allocs
)
, cte as(
select *, row_number() over (partition by region order by amount desc) max_rn,  row_number() over (partition by region order by amount) min_rn
  from all_items)
  
  select region, max(case when max_rn=1 then svc_name end) as most_expensive, max(case when min_rn=1 then svc_name end) as cheapest
    from cte
    group by region
