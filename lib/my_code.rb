# Your Code Here


def map(array)
  result = []
  i = 0 
  while i < array.length do 
    b = yield(array[i])
    result << b
    i += 1 
  end 
  result 
end 

def reduce(array, start = false)
  if start 
    sum = start
    i = 0 
  else 
    sum = array[0]
    i = 1 
  end 
  
  while i < array.length do 
    sum = yield(sum, array[i])
    i += 1 
  end
  sum
end 