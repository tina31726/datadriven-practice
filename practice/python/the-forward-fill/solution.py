def forward_fill(values: list) -> list:
  last_seen= None
  result = values[:]
  for i,num in enumerate(values):
    if num :
      last_seen = num
    if not num:
      result[i] = last_seen
      
  return result
      
  
  
  
