# sliding window + hashmap- dict, O(n)
def longest_unique_substr(s):
  last_seen={} # 每個字元最後一次出現在哪個 index
  left=0
  result=0
  for right, item in enumerate(s):
  # update left index if appear the same item
  # first condition check duplicate 
  # second condition check is it in sliding window range still
    if item in last_seen and last_seen[item]>=left:
      #remove the old item, and move left index to next 
      left = last_seen[item]+1

    last_seen[item] = right
    result = max(result, right-left+1)

    
    
  






  return result
