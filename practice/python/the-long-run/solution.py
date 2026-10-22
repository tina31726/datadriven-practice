# slide window + hash?

def run_length_encoding(s: str):
  result =[]
  left = 0
  for right ,char in enumerate(s):
    if len(result)==0 or s[left] != char:
      result.append(char)
      result.append(1)
    
    else:
      result[-1] +=1
    left=right
   
  
  return "".join(str(i) for i in result)
