select 'inner_join' as join_type,  count(*)as row_count
from users u inner join ad_impressions i
on u.user_id = i.user_id
union 
select 'left_join' as join_type ,  count(*) as row_count
from users u left join ad_impressions i
on u.user_id = i.user_id
union
select 'full_outer_join' as join_type ,  count(*) as row_count
from users u full outer join ad_impressions i
on u.user_id = i.user_id
