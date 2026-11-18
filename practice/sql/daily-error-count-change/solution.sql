with daily as(
select  DATE(first_at) as error_date, count(*) as error_count
from err_tracks
group by 1
)



select *, lag(error_count) over (order by error_date) as prev_count, error_count -lag(error_count) over (order by error_date) as day_over_day_change 
  from daily

  order by error_date
