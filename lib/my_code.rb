# Your Code Here
def map(array)
  i = 0 
  return_array = []
  while i < array.length do 
    return_array.push(yield array[i])
    i += 1 
  end
  return_array 
end

def reduce(array, sv = nil)
  if sv
    sum = sv
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