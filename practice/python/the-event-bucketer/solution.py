from collections import defaultdict
def hourly_event_counts(logs: list[tuple[str, str]]) -> dict[str, dict[str, int]]:
  result = defaultdict(lambda: defaultdict(int))
  for ts, label in logs:
    result[ts[0:13]][label]+=1
  
  return result
  
  
