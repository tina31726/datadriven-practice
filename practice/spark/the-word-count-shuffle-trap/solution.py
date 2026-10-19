select status, count(call_id) call_count
  from api_calls
  group by status
