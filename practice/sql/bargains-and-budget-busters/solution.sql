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
  
  select a.region, a.svc_name as most_expensive,b.svc_name as cheapest
    from cte a
    left join cte b
    on a.region =b.region
    where a.max_rn=1 and b.min_rn=1
