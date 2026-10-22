# sliding window + hash?
from collections import deque
def max_avg_subarray(nums, k):
  result = float('-inf')
  queue = deque()
  if len(nums)<k:
    return None
  
  for i, num in enumerate(nums):
    queue.append(num)
    if len(queue) > k:
      queue.popleft()
    if len(queue) == k:
      result = max(sum(queue)/k,result)


  return result

  
  
